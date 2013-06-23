within ModelicaCompliance.Equations.For;

model ImplicitEnumIterator
  extends Icons.TestCase;

  type E = enumeration(one, two, fish);
  Integer x[E]; 
equation
  for i loop
    x[i] = Integer(i);
  end for;

  assert(x[E.one] == 1, "x[E.one] was not set correctly.");
  assert(x[E.two] == 2, "x[E.two] was not set correctly.");
  assert(x[E.fish] == 3, "x[E.fish] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.3.2.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests an enumeration implicit iteration range in a for-equation.</html>"));
end ImplicitEnumIterator;
