within ModelicaCompliance.Equations.When;

model NestedWhenEquation
  extends Icons.TestCase;

  Real x,y1,y2;
equation 
  when x > 2 then
    when y1 > 3 then
      y2=sin(x);
    end when;
  end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests When-clause inside when-clause is not allowed.</html>"));
end NestedWhenEquation;
