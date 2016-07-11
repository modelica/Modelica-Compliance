within ModelicaCompliance.Scoping.InnerOuter;

model ModificationOnOuter1
  extends Icons.TestCase;

  class B

    class A
      outer parameter Real p = 2; // error, since modification
    end A;

    inner parameter Real p = 1;

    A a;
  end B;  
  
  B b;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"5.5"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that modification on outer is not allowed.</html>"));
end ModificationOnOuter1;