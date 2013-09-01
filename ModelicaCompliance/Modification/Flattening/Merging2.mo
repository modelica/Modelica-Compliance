within ModelicaCompliance.Modification.Flattening;

model Merging2
  extends Icons.TestCase;

  class C1
    parameter Integer a;
  end C1;

  class C2
    parameter Integer b,c;
  end C2;

  class C3
    parameter Integer x1; // No default value
    parameter Integer x2 = 2; // Default value 2
    parameter C1 x3; // No default value for x3.a
    parameter C2 x4(b=4); // x4.b has default value 4
    parameter C1 x5(a=5); // x5.a has default value 5
    extends C1; // No default value for inherited element a
    extends C2(b=6,c=77); // Inherited b has default value 6
  end C3;

  class C4
    extends C3(x2=22, x3(a=33), x4(c=44), x5=x3, a=55, b=66);
  end C4;

  C4 c4(x1 = 111);

equation 
  assert(c4.x1 == 111, "c4.x1 is not set to the correct value!");
  assert(c4.x2 == 22, "c4.x2 is not set to the correct value!");
  assert(c4.x3.a == 33, "c4.x3.a is not set to the correct value!");
  assert(c4.x4.b == 4, "c4.x4.b is not set to the correct value!");
  assert(c4.x4.c == 44, "c4.x4.c is not set to the correct value!");
  assert(c4.x5.a == 33, "c4.x5.a is not set to the correct value!");
  assert(c4.a == 55, "c4.a is not set to the correct value!");
  assert(c4.b == 66, "c4.b is not set to the correct value!");
  assert(c4.c == 77, "c4.c is not set to the correct value!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.2.3"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that modification merging works correctly.</html>"));
end Merging2;
