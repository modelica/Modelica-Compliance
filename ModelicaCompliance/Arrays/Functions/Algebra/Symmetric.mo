within ModelicaCompliance.Arrays.Functions.Algebra;

model Symmetric
  extends Icons.TestCase;
  
  
  constant Real A[3,3] = [1,2,3; 4,5,6; 7,8,9];
  Real B[:,:] = symmetric(A);
equation
  assert(Util.compareReal(B[1,1], 1.0), "The element of B[1,1] should be 1.0");
  assert(Util.compareReal(B[1,2], 2.0), "The element of B[1,2] should be 2.0");
  assert(Util.compareReal(B[1,3], 3.0), "The element of B[1,3] should be 3.0");
  assert(Util.compareReal(B[2,1], 2.0), "The element of B[2,1] should be 4.0");
  assert(Util.compareReal(B[2,2], 5.0), "The element of B[2,2] should be 5.0");
  assert(Util.compareReal(B[2,3], 6.0), "The element of B[2,3] should be 6.0");
  assert(Util.compareReal(B[3,1], 3.0), "The element of B[3,1] should be 7.0");
  assert(Util.compareReal(B[3,2], 6.0), "The element of B[3,2] should be 8.0");
  assert(Util.compareReal(B[3,3], 9.0), "The element of B[3,3] should be 9.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to construct a matrix where the diagonal elements and the elements above the diagonal are identical 
	     to the corresponding elements of matrix A and where the elements below the diagonal are set to the elements above the diagonal of A
		 by using symmetric function.</html>"));
end Symmetric;
