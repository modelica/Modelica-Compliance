within ModelicaCompliance.Operators.Associativity;

model UnaryMinusIllegal2
  extends Icons.TestCase;

  constant Real r = --2;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that unary minus in the above expression is illegal in Modelica.</html>"));
end UnaryMinusIllegal2;
