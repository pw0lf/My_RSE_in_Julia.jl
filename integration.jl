using Pkg
Pkg.activate(".")
Pkg.instantiate()


"""
    trapezodial(f::Function,start,stop,N)

Calculates the intergral of a 1-D function "f" from "start" to "stop", 
by using the trapezoid rule with "N" steps.
"""
function trapezodial(f::Function, start, stop, N)
    dx = (stop-start)/N
    result = 0
    for n in 1:N
        x_0 = start + (n-1)*dx
        x_1 = start + n*dx
        result += (f(x_0) + f(x_1))/2 * dx
    end
    return result
end
