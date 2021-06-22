# Python for Data Science

# Part 1
Tobe...


# Part 2

## Bio Computing
Is the fusion between biology and computing. Working together in the Computer Science, math, estatistics and enginering to process a to interpret biological data.

---

## Python Libraries

- NumPy
- Pandas (Dataframes)
- Matplotlib
- Scikit-Learn

---

## Cheat Sheets
- Python: https://blog.finxter.com/collection-5-cheat-sheets-every-python-coder-must-own/
- NumPy: https://blog.finxter.com/collection-10-best-numpy-cheat-sheets-every-python-coder-must-own/
- Pandas: https://blog.finxter.com/pandas-cheat-sheets/
- Machine Learning: https://blog.finxter.com/machine-learning-cheat-sheets/

---

## Packages
- https://www.scipy.org/install.html

---

## Get started
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

`  `  
`  `


### Notebooks

- [First Steps](./notebooks/python-intro.ipynb)
- [Random - Walk Algorithm](notebooks/random-walk.ipynb)
- [Broadcasting](notebooks/broadcasting.ipynb)
- [Matplotlib - Working with Graphs](notebooks/matplotlib.ipynb)
- [Images](notebooks/images.ipynb)

`  `  
`  `

### Practising

#### Python
https://www.kaggle.com/learn/python

#### Pandas
https://www.kaggle.com/learn/pandas

#### Machine Learning
https://www.kaggle.com/learn/intro-to-machine-learning

`  `  
`  `  

### Pipenv
Source: https://pypi.org/project/pipenv/

---

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

