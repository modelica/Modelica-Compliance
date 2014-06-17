within ModelicaCompliance.Arrays.Declarations;

model BoolArray
  extends Icons.TestCase;

  type B = Boolean;
  Real arr1[B] = {true,false};
  Real arr2[Boolean] = {false,true};
equation
  assert(arr1[false] == true, "arr1[false] was not set correctly.");
  assert(arr1[true] == false, "arr1[true] was not set correctly.");
  assert(arr2[false] == false, "arr2[false] was not set correctly.");
  assert(arr2[true] == true, "arr2[true] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.8.3", "10.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests that it's possible to declare an array using a
      Boolean type as dimension.</html>"));
end BoolArray;
