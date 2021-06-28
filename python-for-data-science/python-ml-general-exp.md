# Part 1 - Machine Learning General Explanation

__Machine learning = programmed statistic__


### Three areas of the statistic (Must know)
- Regression (To predict a number)
- Classification (To predict a class or a label)
- Clustering 

### Basic Concepts - Nº1 (Must know)
- Model (E.g. Logístic Regression)
- Features (AKA Variables)
- Labels (Rótulos)

### Basic Concepts - Nº2 (Must know)
- Training
- Prediction
- Evaluation


## Data Science Process
### 1. Find an interesting question Encontre uma pergunta interessante
- Qual decisáo será tomada?
- Qual benefício isso traz para o cliente?
- Qual benefício isso traz para a empresa?

### 2. Get the data
- Esse é realmente o dado que preciso?
- Existem problemas de privacidade?
- Esses dados serão suficientes?

### 3. Prepare the data
- Como separar o joio do trigo?
- Está no formato que preciso?
  
### 4. Explore the data
- Existem padrões?
- Existem anomalizas?

### 5. Choose or build the model
- Os modelos existentes são suficientes?
- **Quais são os melhores modelos para esse problema?**

### 6. Evalute and communicate the results
- Os resultados fazem sentido?
- Os resultados estão realmente corretos?
- Os resultados permitem a tomada de decisão escolhida?


## Training/test
For the data separation between training and test data, we can use the [Pareto Principle](#pareto-principle)


## Some contents to try
#### Fitting a line to data, aka least squares or linear regression
https://www.youtube.com/watch?v=PaFPbb66DxQ

#### Linear models
https://www.youtube.com/watch?v=nk2CQITm_eo

#### Viés e Variância (To study)
https://www.youtube.com/watch?v=EuBBz3bI-aA&list=PLblh5JKOoLUICTaGLRoHQDuF_7q2GfuJF&index=5

#### Cross Validation
https://www.youtube.com/watch?v=fSytzGwwBVw


## Notebooks
### Supervisoned models
- [Logistic Regression](notebooks/logistic-regression.ipynb)
- [Linear Regression](notebooks/linear-regression.ipynb)
- [Support Vector Machine (For Binary Classification)](notebooks/svm.ipynb)
- [Decision Tree](notebooks/decision-tree-csf.ipynb)
- [Random Forest](notebooks/random-forest.ipynb)

#### Unsupervisoned models
- [Clustering K-means](notebooks/clustering-kmeans.ipynb)


## Guide to Ensemble Learning
https://www.analyticsvidhya.com/blog/2018/06/comprehensive-guide-for-ensemble-models/

## Notes
#### **Pareto Principle**
It`s based on the fact that, for many situations, approximately 80% of the efects come from 20% of the causes.

#### **Redução Dimensional**
Técnicas (inclusive não supervisionadas) para redução do número de features.
Source: https://www.dca.fee.unicamp.br/~lboccato/topico_9_reducao_dimensionalidade.pdf

#### Randon Forest **Bagging** terminology
Bootstrapping the data plus using the aggregate to make a decision is called `Bagging`