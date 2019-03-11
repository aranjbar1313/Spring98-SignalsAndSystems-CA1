import numpy as np 


nx = np.arange(0, 5)
x = np.ones((1, 5))
ny = convIndices(nx, nx) # you need to implement the convIndices function .
                         # In this example it will output a row vector with elements [0 . . 10]
