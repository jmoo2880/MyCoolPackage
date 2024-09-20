@testset "Greetings test" begin
    
    @test greet() == "Hello World!"
    @test farewell() == "Bye!"

    @inferred myfunction(1.0) # use to check type stability
end