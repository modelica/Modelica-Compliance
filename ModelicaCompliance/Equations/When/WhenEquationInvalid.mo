within ModelicaCompliance.Equations.When;

model WhenEquationInvalid
  extends Icons.TestCase;

  Real x, y;
equation
  x + y = 5;
  when sample(0, 2) then 
    2*x + y = 7;                
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"8.3.5", "8.3.5.2"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests equations within a when-equation to a form ,where the result variable is on the left-hand side ,is not allowed.</html>"));
end WhenEquationInvalid;
