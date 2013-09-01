within ModelicaCompliance.Modification.Flattening;

model MultipleSingle
  extends Icons.TestCase;

  class C3
    class C4
     Real x = 1.0;
    end C4;

    C4 a(x.unit = "V", x.displayUnit="mV", x=5.0); 
    // Ok, different attributes designated (unit, displayUnit and value)
    // identical to:
    C4 b(x(unit = "V", displayUnit="mV") = 5.0));
  end C3;  
  
  C3 c3;
equation 
  assert(not (c3.a.x > 4.5 and c3.a.x < 5.5), "c3.a.x was not modified correctly");
  assert(not (c3.b.x > 4.5 and c3.b.x < 5.5), "c3.b.x was not modified correctly");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.2.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that modification of different sub-elements is working.</html>"));
end MultipleSingle;
