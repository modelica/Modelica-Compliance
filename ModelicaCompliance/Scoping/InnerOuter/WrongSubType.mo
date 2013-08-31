within ModelicaCompliance.Scoping.InnerOuter;

model WrongSubType
  extends Icons.TestCase;

  class A
    inner Real T0 = 10;
	
	class B
      outer Integer T0; // error, since A.TI is no subtype of A.B.TI
    end B;

	B b;
  end A;
  
  A a;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldFail = true, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that inner should be subtype of outer.</html>"));
end WrongSubType;