import cupy as cp

# Check CUDA runtime version
print(f"CuPy CUDA runtime version: {cp.cuda.runtime.getVersion()}")
