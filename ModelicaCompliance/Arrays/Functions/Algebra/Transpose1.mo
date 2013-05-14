within ModelicaCompliance.Arrays.Functions.Algebra;

model Transpose1
  extends Icons.TestCase;
  
  
  constant Real i[2,2] = transpose({{1.1,2.2},{3.3,4.4}});
equation
  assert(Util.compareReal(i[1,1], 1.1), "The element of i[1,1] should be 1.1");
  assert(Util.compareReal(i[1,2], 3.3), "The element of i[1,2] should be 3.3");
  assert(Util.compareReal(i[2,1], 2.2), "The element of i[2,1] should be 2.2");
  assert(Util.compareReal(i[2,2], 4.4), "The element of i[2,2] should be 4.4");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to permute the first two dimension of an array by using the built in function symmetric.</html>"));
end Transpose1;
