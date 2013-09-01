within ModelicaCompliance.Modification.Flattening;

model Complicated
  extends Icons.TestCase;

  partial package PartialMedium
    constant Integer y = 10;
  end PartialMedium;
  
  package M1 = PartialMedium(y = 100);
  package M2 = M1(y = 200);
  
  model B
   parameter Integer x = 1;
   replaceable package Medium = PartialMedium;
   parameter Integer y = Medium.y;
  end B;

  model C
    parameter Integer x = 2;
    replaceable package Medium = PartialMedium;
    B b(x = x, redeclare replaceable package Medium = Medium);
    // The ‘x’ and ‘Medium’ being modified are declared in the model B.
    // The modifiers ‘=x’ and ‘=Medium’ are found in the model C.
  end C;

  model D
    parameter Integer x = 3;
    replaceable package Medium = PartialMedium;
    C c(b(x = x, redeclare replaceable package Medium = Medium));
   // The ‘x’ and ‘Medium’ being modified are declared in the model B.
   // The modifiers ‘=x’ and ‘=Medium’ are found in the model D.
  end D;

  D d1(redeclare package Medium = M1);
  D d2(x = 4, redeclare package Medium = M2);
equation 
  assert(d1.x == 3, "d1.x is not set to the correct value!");
  assert(d1.c.x == 2, "d1.c.x is not set to the correct value!");
  assert(d1.c.b.x == 3, "d1.c.b.x is not set to the correct value!");
  assert(d1.c.b.y == 100, "d1.c.b.y is not set to the correct value!");
  assert(d2.x == 4, "d2.x is not set to the correct value!");
  assert(d2.c.x == 2, "d2.c.x is not set to the correct value!");
  assert(d2.c.b.x == 4, "d2.c.b.x is not set to the correct value!");
  assert(d2.c.b.y == 200, "d2.c.b.x is not set to the correct value!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.2"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that simple modifications work.</html>"));
end Complicated;


