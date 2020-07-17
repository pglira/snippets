# Row vector
v = [1 2 3 4] # size = (1,4)

# Column vector
v = [1, 2, 3, 4] # size = (4,)
v = [1; 2; 3; 4] # size = (4,)

# Initialize matrix with undefinded values
no_rows = 10
no_cols = 5
A = Array{Float64}(undef, no_rows, no_cols)
# Attention: With undef the array A contains random values!

# Initialize matrix with NaNs
no_rows = 10
no_cols = 5
A = fill(NaN, no_rows, no_cols)

# Number of rows
A = rand(10, 5)
no_rows = size(A)[1]

# Attention: slicing can decrease dimension
# https://github.com/JuliaLang/julia/issues/5949
A = rand(10, 5)
row_1_dim = A[1,:] # size = (5,), i.e. it is 1-dimensional
row_2_dim = A[1:1,:] # size = (1,5), i.e. it is 2-dimensional
