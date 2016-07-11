within ModelicaCompliance.Modification.Flattening;

model Merging1
  extends Icons.TestCase;

  class C1
   class C11
     parameter Integer x;
   end C11;
  end C1;

  class C2
    class C21
    end C21;
  end C2;

  class C3
    extends C1;
    C11 t(x = 3); // ok, C11 has been inherited from C1
    C21 u; // ok, even though C21 is inherited below
    extends C2;
  end C3;
  
  C3 c3;
  
equation 
  assert(c3.t.x == 3, "c3.t.x is not set to the correct value!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.2.3"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that modifications merging works correctly.</html>"));
end Merging1;
