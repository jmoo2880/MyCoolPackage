struct MyNumber <: Number
    a::Int
    b::Int
end

+(x::MyNumber, y::MyNumber) = MyNumber(x.a + y.a, x.b + y.b)
-(x::MyNumber, y::MyNumber) = MyNumber(x.a - y.a, x.b - y.b)

myfunction(x) = x > 0 ? x : zero(x)