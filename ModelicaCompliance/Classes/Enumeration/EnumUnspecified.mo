within ModelicaCompliance.Classes.Enumeration;

model EnumUnspecified
  extends Icons.TestCase;

  model A
    replaceable type E = enumeration(:);
    parameter E e;
  end A;

  type E2 = enumeration(e1, e2, e3);
  A a(redeclare type E = E2, e = E2.e2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.5.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the typical usage of enumeration(:) as a placeholder type to
        be redeclared.</html>"));
end EnumUnspecified;
