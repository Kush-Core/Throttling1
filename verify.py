import numpy as np

N = 100_000_000

data = np.ones(N, dtype=np.float32)
data.tofile("data.bin")
print("Numpy sum:", np.sum(data))