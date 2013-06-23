within ModelicaCompliance.Arrays.Flexible;

model ArrayFlexible
  extends Icons.TestCase;

function joinThreeVectors
  input Integer v1[:],v2[:],v3[:];
  output Integer vres[size(v1,1)+size(v2,1)+size(v3,1)];
algorithm
  vres := cat(1, v1, v2,v3);
end joinThreeVectors;

  Integer a[2]={1,2};
  Integer b[3]={3,4,5};
  Integer c[4]={6,7,8,9};
  Integer x[9];
algorithm
  x:=joinThreeVectors(a,b,c);
equation
  assert(x[1] == 1, "The element of x[1] must be 1");
  assert(x[2] == 2, "The element of x[2] must be 2");
  assert(x[3] == 3, "The element of x[3] must be 3");
  assert(x[4] == 4, "The element of x[4] must be 4");
  assert(x[5] == 5, "The element of x[5] must be 5");
  assert(x[6] == 6, "The element of x[6] must be 6");
  assert(x[7] == 7, "The element of x[7] must be 7");
  assert(x[8] == 8, "The element of x[8] must be 8");
  assert(x[9] == 9, "The element of x[9] must be 9");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.2", "12.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that flexible setting of array dimension sizes of arrays in functions is possible.</html>"));
end ArrayFlexible;
