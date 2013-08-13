within ModelicaCompliance.Components.Time;

model TimeScope
  extends Icons.TestCase;

  model A
    Real x = time;
  end A;

  A a;
  Real y = time;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that the built-in variable time is available in
      different scopes.</html>"));
end TimeScope;
