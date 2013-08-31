within ModelicaCompliance.Classes.Prefixes;

model StreamWrongSubtype
  extends Icons.TestCase;

  connector C
    Real V;
    stream Integer i; // error, stream prefix means subtype of Real
  end C;
	
  class A
    C c1, c2;
  equation
    connect(c1, c2);
  end A;
  
  A a;
  C c(V = 10);
equation
  connect(c, a.c1);
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that components with prefix stream should be subtype of Real.</html>"));
end StreamWrongSubtype;