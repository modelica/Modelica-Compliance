within ModelicaCompliance.Scoping.InnerOuter;

model MissingInnerMismatch
  extends Icons.TestCase;

  record R
    Integer i;
    
    annotation (
      defaultComponentName = "T0",
      defaultComponentPrefixes = "inner",
      missingInnerMessage = "The T0 inner variable is missing, adding record with Integer");
  end R;
  
  record R2
    Real i;
    annotation (
      defaultComponentName = "T0",
      defaultComponentPrefixes = "inner",
      missingInnerMessage = "The T0 inner variable is missing, adding record with Real");
  end R2;
  
  class A
    outer R T0;
  end A;
  
  class A2
    outer R2 T0;
  end A2;

  class B
    A a;
    A2 a2;
  end B;

  B b;

equation 
  T0.i = 1;
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.4", "17.6"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that missing inner is not added if different classes (with missingInnerMessage).</html>"));
end MissingInnerMismatch;