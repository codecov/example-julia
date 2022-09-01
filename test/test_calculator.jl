using Test

using calculator

@testset "CaluclatorTest" begin
  @testset "TestAdd" begin
    @test add(1, 2) == 3.0
    @test add(1.0, 2.0) == 3.0
    @test add(0, 2.0) == 2.0
    @test add(2.0, 0) == 2.0
    @test add(-4, 2.0) == -2.0
  end

  @testset "TestSubtract" begin
    @test subtract(1, 2) == -1.0
    @test subtract(2, 1) == 1.0
    @test subtract(1.0, 2.0) == -1.0
    @test subtract(0, 2.0) == -2.0
    @test subtract(2.0, 0.0) == 2.0
    @test subtract(-4, 2.0) == -6.0
  end

  @testset "TestMultiply" begin
    @test multiply(1, 2) == 2.0
    @test multiply(1.0, 2.0) == 2.0
    @test multiply(0, 2.0) == 0.0
    @test multiply(2.0, 0.0) == 0.0
    @test multiply(-4, 2.0) == -8.0
  end

  @testset "TestDivide" begin
    @test divide(1, 2) == 0.5
    @test divide(1.0, 2.0) == 0.5
    @test divide(0, 2.0) == 0
    @test divide(-4, 2.0) == -2.0
    # @test divide(2.0, 0.0) == "Cannot divide by 0"
  end
end
