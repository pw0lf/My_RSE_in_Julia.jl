using Test, My_RSE_in_Julia

f(x) = x
@test trapezodial(f,0,2,100000) ≈ 2

f(x) = 9*x^2
@test trapezodial(f,0,2,100000) ≈ 24

f(x) = [x,9*x^2]
@test trapezodial(f,0,2,100000) ≈ [2,24]

f(x) = [x]
@test_broken trapezodial(f,0,2,100000) ≈ [2]