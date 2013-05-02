within ModelicaCompliance.Operators.Associativity;

model UnaryPlusIllegal
  extends Icons.TestCase;

  constant Real r = ++2;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that unary plus in the above expression is illegal in Modelica.</html>"));
end UnaryPlusIllegal;
