within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWDivision5
  extends Icons.TestCase;

  constant Integer intArray1[3] = {4, 8, 12};
  constant Integer intArray2[3] = {2, 4, 6};
  Real result[3];
equation
  result = intArray1 ./ intArray2;
  
  assert(Util.compareReal(result[1], 2.0), "The element of result[1] must be 2.0");
  assert(Util.compareReal(result[2], 2.0), "The element of result[2] must be 2.0");
  assert(Util.compareReal(result[3], 2.0), "The element of result[3] must be 2.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests elementwise array division</html>"));
end ArrayEWDivision5;
