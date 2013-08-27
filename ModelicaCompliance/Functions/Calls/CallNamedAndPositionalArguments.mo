within ModelicaCompliance.Functions.Calls;

model CallNamedAndPositionalArguments
  extends Icons.TestCase;

  function PolynomialEvaluator
	input Real A[:]; // Array, size defined at function call time
	input Real x := 1.0; // Default value 1.0 for x
	output Real sum;
  protected
	Real xpower;
  algorithm
	sum := 0;
	xpower := 1;
	for i in 1:size(A, 1) loop
	  sum := sum + A[i]*xpower;
	  xpower := xpower*x;
	end for;
  end PolynomialEvaluator;

	Real p;
  equation
	p = PolynomialEvaluator({1, 2, 3, 4}, x = 21);
    assert(Util.compareReal(p, 38410.0), "p was not set correctly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.4", "12.4.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests named and positional input arguments of a function call.</html>"));

end CallNamedAndPositionalArguments;

