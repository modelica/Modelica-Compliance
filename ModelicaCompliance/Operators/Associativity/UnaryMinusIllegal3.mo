within ModelicaCompliance.Operators.Associativity;

model UnaryMinusIllegal3
  extends Icons.TestCase;

  constant Real r = 2--2;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests unary minus in the above expression is illegal in Modelica.</html>"));
end UnaryMinusIllegal3;
