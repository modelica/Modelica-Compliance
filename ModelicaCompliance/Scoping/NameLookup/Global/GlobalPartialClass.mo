within ModelicaCompliance.Scoping.NameLookup.Global;

model GlobalPartialClass
  extends Icons.TestCase;

  partial class A
    constant Real x = 3.2;
  end A;

  constant Real y = .ModelicaCompliance.Scoping.NameLookup.Global.GlobalPartialClass.A.x;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that a class used during global name lookup may not
        be partial.</html>"));
end GlobalPartialClass;
