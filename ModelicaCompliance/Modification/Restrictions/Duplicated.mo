within ModelicaCompliance.Modification.Restrictions;

model Duplicated
  extends Icons.TestCase;

  class C1
    parameter Real x[3];
  end C1;
  
  class C2 = C1(x=ones(3), x={1,2,3}); // Error: x designated twice
  
  C2 c2;
equation 
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.2.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that duplicate modification generate an error.</html>"));
end Duplicated;
