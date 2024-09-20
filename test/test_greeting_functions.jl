@testset "Greetings test" begin
    
    @test greet() == "Hello World!"
    @test farewell() == "Bye!"
end