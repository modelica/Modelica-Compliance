within ModelicaCompliance.Arrays.Functions.Construction;

model ArrayConstructorFillBoolean
  extends Icons.TestCase;
   
  Boolean check[3, 4] = fill(true, 3, 4); 
equation
  assert(check[1, 1] == true, "The element of check[1, 1] should be true");
  assert(check[1, 2] == true, "The element of check[1, 2] should be true");
  assert(check[1, 3] == true, "The element of check[1, 3] should be true");
  assert(check[1, 4] == true, "The element of check[1, 4] should be true");
  assert(check[2, 1] == true, "The element of check[2, 1] should be true");
  assert(check[2, 2] == true, "The element of check[2, 2] should be true");
  assert(check[2, 3] == true, "The element of check[2, 3] should be true");
  assert(check[2, 4] == true, "The element of check[2, 4] should be true");
  assert(check[3, 1] == true, "The element of check[3, 1] should be true");
  assert(check[3, 2] == true, "The element of check[3, 2] should be true");
  assert(check[3, 3] == true, "The element of check[3, 3] should be true");
  assert(check[3, 4] == true, "The element of check[3, 4] should be true");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct the boolean matrix 
	     by using specialized array constructor function fill.</html>"));
end ArrayConstructorFillBoolean;
