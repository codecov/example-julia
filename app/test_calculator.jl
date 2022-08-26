using .Calculator

@testset "CaluclatorTest" begin
  @testset "TestAdd" begin
    @test add(1, 1) == 2
  end
end

end
