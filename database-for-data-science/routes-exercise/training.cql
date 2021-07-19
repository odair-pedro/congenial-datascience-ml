// //---------------------------------------------------------------------------
// Create database
// //---------------------------------------------------------------------------
//
create database Routes

// //---------------------------------------------------------------------------
// Acessing database
// //---------------------------------------------------------------------------
//
:use Routes

// //---------------------------------------------------------------------------
// Create nodes with the cities
// //---------------------------------------------------------------------------
// Syntax: create (alias:Node {prop_1: 'text', prop_2: 'anything'})
//
create (poa:City { name: 'Porto Alegre'}),
       (can:City { name: 'Canoas'}),
       (est:City { name: 'Esteio'}),
       (sas:City { name: 'Sapucaia do Sul'}),
       (sal:City { name: 'São Leopoldo'}),
       (nha:City { name: 'Novo Hamburgo'}),
       (ivo:City { name: 'Ivoti'}),
       (doi:City { name: 'Dois Irmaos'}),  
       (nop:City { name: 'Nova Petropolis'}),
       (sap:City { name: 'Sapiranga'}),
       (par:City { name: 'Parobe'}),
       (grv:City { name: 'Gravatai'}),
       (taq:City { name: 'Taquara'}),
       (grm:City { name: 'Gramado'})

//---------------------------------------------------------------------------
// Create the relationship "GoTo" between the cities, with the attribute "km"
// Syntax: create (aliasOrigin)-[:Relationship]->(aliasTarget)
//---------------------------------------------------------------------------
//
create (poa)-[:GoTo {km: 15.3}]->(can),
       (can)-[:GoTo {km: 11.7}]->(est),
       (est)-[:GoTo {km:  3.2}]->(sas),
       (sas)-[:GoTo {km:  6.6}]->(sal),
       (sal)-[:GoTo {km:  8.9}]->(nha),
       (nha)-[:GoTo {km:  7.7}]->(ivo),
       (ivo)-[:GoTo {km:  9.6}]->(doi),
       (doi)-[:GoTo {km: 40.4}]->(nop),
       (nop)-[:GoTo {km: 34.6}]->(grm),
       (nha)-[:GoTo {km: 13.2}]->(sap),
       (sap)-[:GoTo {km: 17.5}]->(par),
       (par)-[:GoTo {km: 48.1}]->(grm),
       (poa)-[:GoTo {km: 30.8}]->(grv),
       (grv)-[:GoTo {km: 45.4}]->(taq),
       (taq)-[:GoTo {km:  6.0}]->(par)

//---------------------------------------------------------------------------
// Show all created objects
//---------------------------------------------------------------------------
//
MATCH (n)
RETURN n

//---------------------------------------------------------------------------
// City (nodes) count
//---------------------------------------------------------------------------
//
MATCH (:City)
RETURN count(*) AS count_city

//---------------------------------------------------------------------------
// Get cities with 'S' at begining
//---------------------------------------------------------------------------
//
MATCH (withS:City) WHERE withS.name =~ "S.+" RETURN withS

//---------------------------------------------------------------------------
// Create State node with name 'RS'
//---------------------------------------------------------------------------
//
CREATE (uf:State {name:'RS'}) RETURN uf

//---------------------------------------------------------------------------
// Get the type nodes that has been created
//---------------------------------------------------------------------------
//
MATCH (n)
RETURN DISTINCT labels(n) AS Labels

//---------------------------------------------------------------------------
// Get the shortest path between Porto Alegre and Gramado, 
// based on the hops (smaller relationship count). In this case is 15
//---------------------------------------------------------------------------
//
MATCH (poa:City { name: 'Porto Alegre' }),
      (grm:City { name: 'Gramado' }),
      sp = shortestPath((poa)-[*..15]->(grm))
RETURN sp

//---------------------------------------------------------------------------
// Get the shortest path between Porto Alegre and Gramado,
// based on the smaller cost, in this case, the shortest distance in kilometers
//---------------------------------------------------------------------------
//
MATCH (start:City {name: 'Porto Alegre'}),
      (end:  City {name: 'Gramado'})

CALL  gds.alpha.kShortestPaths.stream({              	// Traversal algorithm (also know as graph traversal or graph search)
      nodeProjection: 'City',                        	// Node type
      relationshipProjection: {
         GoTo: {                                    	// Relationship type
            type: 'GoTo',
            properties: 'km'                           	// Property
         }
      },
      startNode: start,                                	// Node or alias origin
      endNode: end,                                    	// Node or alias target
      k: 3,                                            	// Response limit (routes)
      relationshipWeightProperty: 'km'                 	// Property km used as weight for the calc
})

YIELD index, nodeIds, costs                          	// Output variables and parameters

RETURN [node IN gds.util.asNodes(nodeIds) | node.name] AS Locality,  	    // City
       costs AS Costs,                                            	    // Cost by relationship (or peace of the route) in km
       reduce(acc = 0.0, km IN costs | acc + km) AS Distance,     	    // "reduce" function for the total cost in KM
       reduce(acc = 0.0, km IN costs | acc + km) / 9 * 4.59 AS Fuel       // Foreseen cost for the trip

//---------------------------------------------------------------------------
// Get the centrality by the closeness between cities - Closeness
//---------------------------------------------------------------------------
//
CALL gds.alpha.closeness.stream({
       nodeProjection:         "City",
       relationshipProjection: "GoTo",
       improved:               true
})

YIELD nodeId, centrality

RETURN gds.util.asNode(nodeId).name as City, centrality as Closeness
ORDER BY centrality DESC;
 
//---------------------------------------------------------------------------
// Get the centrality based on the page rank fo the cities - PageRank
//---------------------------------------------------------------------------
//
CALL gds.pageRank.stream({
       nodeProjection: "City",
       relationshipProjection: "GoTo",
       maxIterations: 20,
       dampingFactor: 0.85
})

YIELD nodeId, score

RETURN gds.util.asNode(nodeId).name AS City, score as PageRank
ORDER BY score DESC;

//---------------------------------------------------------------------------
// Creating UF node with property name RS
//---------------------------------------------------------------------------
//
CREATE (uf:State { name: 'RS' }) RETURN uf


//---------------------------------------------------------------------------
// Creating relationship between State and City
//---------------------------------------------------------------------------
//
MATCH (poa:City { name: 'Porto Alegre' }),
      (grm:City { name: 'Gramado' }),
      (rs:State { name: 'RS' })

CREATE (poa)-[:Belongs]->(rs),
       (grm)-[:Belongs]->(rs)

//---------------------------------------------------------------------------
// Delete all data
//---------------------------------------------------------------------------
//
MATCH (n)
DETACH DELETE n