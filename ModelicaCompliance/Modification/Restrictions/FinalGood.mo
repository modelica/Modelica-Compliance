within ModelicaCompliance.Modification.Restrictions;

model FinalGood
  extends Icons.TestCase;

  type Angle = Real(final quantity="Angle", final unit ="rad", displayUnit="deg");
  Angle a2(displayUnit="rad") = 10.0; // fine
  
  record R
    final parameter Integer i1 = 10;
    parameter Integer i2 = 20;
  end R;
  
  R r(i2 = 300);

  model TransferFunction
    parameter Real b[:] = {1} "numerator coefficient vector";
    parameter Real a[:] = {1,1} "denominator coefficient vector";
  end TransferFunction;

  model PI "PI controller"
    parameter Real k=1 "gain";
    parameter Real T=1 "time constant";
    TransferFunction tf(final b=k*{T,1}, final a={T,0});
  end PI;

  PI c1(k=2, T=3); // fine
equation
  assert(r.i2 == 300, "r.i2 was not set correctly!");
  assert(r.i1 == 10, "r.i1 was not set correctly!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.2.6"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that modification of non-final is working correctly.</html>"));
end FinalGood;
