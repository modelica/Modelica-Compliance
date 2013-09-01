within ModelicaCompliance.Scoping.InnerOuter;

model MissingInnerAdded
  extends Icons.TestCase;

  record R
    Integer i;
    annotation (
      defaultComponentName = "T0",
      defaultComponentPrefixes = "inner",
      missingInnerMessage = "The T0 inner variable is missing");
  end R;

  class A
    outer R T0;
  end A;

  class B
    A a;
  end B;

  B b;

equation 
  T0.i = 1;
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4", "17.6"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that missing inner is added automatically if an annotation for it is specified.</html>"));
end MissingInnerAdded;