within ModelicaCompliance.Modification.Flattening;

model Array
  extends Icons.TestCase;

  model C
    parameter Integer a [3];
    parameter Integer d;
  end C;

  model B
   C c[2](each a = {1,2,3}, d = {1,2});
  end B;

  B b;

equation 
  assert(b.c[1].a[1] == 1, "b.c[1].a[1] is not set to the correct value!");
  assert(b.c[1].a[2] == 2, "b.c[1].a[2] is not set to the correct value!");
  assert(b.c[1].a[3] == 3, "b.c[1].a[3] is not set to the correct value!");
  assert(b.c[2].a[1] == 1, "b.c[2].a[1] is not set to the correct value!");
  assert(b.c[2].a[2] == 2, "b.c[2].a[2] is not set to the correct value!");
  assert(b.c[2].a[3] == 3, "b.c[2].a[3] is not set to the correct value!");
  assert(b.c[1].d == 1, "b.c[1].d is not set to the correct value!");
  assert(b.c[2].d == 2, "b.c[2].d is not set to the correct value!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"7.2.5"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that modifications on arrays are working.</html>"));
end Array;
