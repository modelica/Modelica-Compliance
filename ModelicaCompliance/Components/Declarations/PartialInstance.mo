within ModelicaCompliance.Components.Declarations;

model PartialInstance
  extends Icons.TestCase;

  partial class C
  end C;

  C c;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's forbidden to instantiate a partial class.</html>"));
end PartialInstance;
