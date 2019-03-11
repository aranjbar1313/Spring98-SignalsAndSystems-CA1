import numpy as np 

# 4.2
def convIndices(na, nb):
    return np.arange(na[0] + nb[0], na[-1] + nb[-1])


# 4.3
def heaviside(t):
    return (t >= 0) * 1


def x(n):
    return ((1 / 2) ** (n - 2)) * u(n - 2)


def h(n):
    return heaviside(n)


