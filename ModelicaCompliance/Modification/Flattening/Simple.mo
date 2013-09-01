within ModelicaCompliance.Modification.Flattening;

model Simple
  extends Icons.TestCase;

  model A
    parameter Integer a = 1;
    parameter Integer b = 2;
  end A;

  A modified(a = 10, b = 20);
  A a;
equation 
  assert(a.a == 1, "a.a is not set to the correct value!");
  assert(a.b == 2, "a.b is not set to the correct value!");
  assert(modified.a == 10, "modified.a is not set to the correct value by the modification!");
  assert(modified.b == 20, "modified.b is not set to the correct value by the modification!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.2"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that simple modifications work.</html>"));
end Simple;


