within ModelicaCompliance.Arrays.Declarations;

model ArrayDeclarationMixedForms
  extends Icons.TestCase;

  Real[2,2] x[1,1] = ones(1, 1, 2, 2); // x has type Real[4,5,3,2]
  Real[1] y[2] = {{4},{5}}; // x has type Real[2, 1]
equation
   assert(Util.compareReal(x[1, 1, 1, 1], 1.0), "x[1, 1, 1, 1] was not set correctly.");
   assert(Util.compareReal(x[1, 1, 1, 2], 1.0), "x[1, 1, 1, 2] was not set correctly.");
   assert(Util.compareReal(x[1, 1, 2, 1], 1.0), "x[1, 1, 2, 1] was not set correctly.");
   assert(Util.compareReal(x[1, 1, 2, 2], 1.0), "x[1, 1, 2, 2] was not set correctly.");
   assert(Util.compareReal(y[1, 1], 4.0), "y[1,1] was not set correctly.");
   assert(Util.compareReal(y[2, 1], 5.0), "y[2, 1] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays by mixing the two decalration modelica forms, 
	  i.e by type[dim] identifier form and by placing the dimension descriptors after the variable name.</html>"));
end ArrayDeclarationMixedForms;
