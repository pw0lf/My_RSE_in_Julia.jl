using Pkg
Pkg.activate(".")
Pkg.instantiate()


"""
    trapezodial(f::Function,start,stop,N)

Calculates the intergral of a function "f" with 1-D input from "start" to "stop", 
by using the trapezoid rule with "N" steps.
"""
function trapezodial(f::Function, start, stop, N)
    dx = (stop-start)/N
    dim = length(f(start))
    if dim == 1
        result = 0
    else
        result = zeros(dim)
    end
    for n in 1:N
        x_0 = start + (n-1)*dx
        x_1 = start + n*dx
        result += (f(x_0) + f(x_1))/2 .* dx
    end
    return result
end

f(x) = x*exp(x)
@show trapezodial(f,-1,2,10000)
