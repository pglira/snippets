using ForwardDiff

# Derivative of f(x) with respect to x
f(x::Real) = x^3 + 7
x = 2
dx = x -> ForwardDiff.derivative(f, x)
println("df/dx = $(dx(x))") # 3*2^3 = 12
