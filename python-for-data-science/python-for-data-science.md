# Python for Data Science

# Part 1

Machine learning = estatística programada

Três áreas da estatística (Must know)
- Regressão (Prever um numero)
- Classificação (Prever uma classe)
- Agrupamento 

Conceitos básicos 1 (Must know)
- Modelos (Ex: Logístic Regression)
- Features (AKA Variáveis)
- Labels (Rótulos)

Conceitos básicos 2 (Must know)
- Treinamento
- Predição
- Avaliação

<br/>

## Processos da Ciência de Dados

### 1. Encontre uma pergunta interessante
- Qual decisáo será tomada?
- Qual benefício isso traz para o cliente?
- Qual benefício isso traz para a empresa?

### 2. Obtenha os dados
- Esse é realmente o dado que preciso?
- Existem problemas de privacidade?
- Esses dados serão suficientes?

### 3. Prepare os dados
- Como separar o joio do trigo?
- Está no formato que preciso?
  
### 4. Explore os dados
- Existem padrões?
- Existem anomalizas?

### 5. Escolha ou construa o modelo
- Os modelos existentes são suficientes?
- **Quais são os melhores modelos para esse problema?**

### 6. Avalie e comunique os resultados
- Os resultados fazem sentido?
- Os resultados estão realmente corretos?
- Os resultados permitem a tomada de decisão escolhida?

<br/>

## Treinamento/testes
Para separação dos dados para treinamento e testes, pode-se usar o [Princípio de Pareto](#princípio-de-pareto)

<br/>

## Some contents to try
#### Fitting a line to data, aka least squares or linear regression
https://www.youtube.com/watch?v=PaFPbb66DxQ

#### Linear models
https://www.youtube.com/watch?v=nk2CQITm_eo

#### Viés e Variância (To study)
https://www.youtube.com/watch?v=EuBBz3bI-aA&list=PLblh5JKOoLUICTaGLRoHQDuF_7q2GfuJF&index=5

#### Cross Validation
https://www.youtube.com/watch?v=fSytzGwwBVw

<br/>

## Notebooks

### Supervisoned models
- [Logistic Regression](notebooks/logistic-regression.ipynb)
- [Linear Regression](notebooks/linear-regression.ipynb)
- [Support Vector Machine (For Binary Classification)](notebooks/svm.ipynb)

#### Unsupervisoned models
- [Clustering K-means](notebooks/clustering-kmeans.ipynb)

<br/>

## Notes
#### **Princípio de Pareto**
Baseia-se em que, para muitas situações, aproximadamente 80% dos efeitos vêm de 20% das causas.

#### **Redução Dimensional**
Técnicas (inclusive não supervisionadas) para redução do número de features.
Source: https://www.dca.fee.unicamp.br/~lboccato/topico_9_reducao_dimensionalidade.pdf

<br/>

# Part 2

## Python Libraries

- NumPy
- Pandas (Dataframes)
- Matplotlib
- Scikit-Learn

<br/>

## Cheat Sheets
- Python: https://blog.finxter.com/collection-5-cheat-sheets-every-python-coder-must-own/
- NumPy: https://blog.finxter.com/collection-10-best-numpy-cheat-sheets-every-python-coder-must-own/
- Pandas: https://blog.finxter.com/pandas-cheat-sheets/
- Machine Learning: https://blog.finxter.com/machine-learning-cheat-sheets/

<br/>

## Scientific Python Modules
- https://www.scipy.org/install.html

<br/>

## Gettting Started
Using [SciPy](https://scipy-lectures.org/)

The best modules to get started is `NumPy` and `Matplotlib`

Example:
```python
import numpy as np
from matplotlib import pyplot as plt

ys = 200 + np.random.randn(100)
x = [x for x in range(len(ys))]

plt.plot(x, ys, '-')
plt.fill_between(x, ys, 195, where=(ys > 195), facecolor='g', alpha=0.6)

plt.title("Sample Visualization")
plt.show()
```

### Notebooks

- [First Steps](./notebooks/python-intro.ipynb)
- [Random - Walk Algorithm](notebooks/random-walk.ipynb) (TODO)
- [Broadcasting](notebooks/broadcasting.ipynb) (TODO)
- [Matplotlib - Working with Graphs](notebooks/matplotlib.ipynb) (TODO)
- [Images Processing](notebooks/images.ipynb)
- [Exercises](notebooks/exercises.ipynb) (TODO)

### Practising Tools

#### Python
https://www.kaggle.com/learn/python

#### Pandas
https://www.kaggle.com/learn/pandas

#### Machine Learning
https://www.kaggle.com/learn/intro-to-machine-learning


### Pipenv
Source: https://pypi.org/project/pipenv/

<br/>

## Notes

- **Exercises/Training**
  - https://www.hackinscience.org/exercises/
  - https://www.urionlinejudge.com.br/judge/en/login
  - https://www.codewars.com/
  - **Data Science**
    - **https://scipy-lectures.org/**
- **Online Code tool**
  - https://replit.com/
  - https://www.kaggle.com/
  - https://colab.research.google.com (Better for data analysis)