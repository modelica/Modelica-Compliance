model CallMultiResultsWithOmittedOutput2

  function multipleResults
    input Integer n;
    input Real x[n];
    output Real r1[n];
    output Real r2;
  algorithm
    r2 := sum(x);
    r1 := fill(r2, n);
  end multipleResults;

    Real a[2] = multipleResults(2, {1.0,2.0});
  algorithm
    assert(Util.compareReal(a[1], 3.0), "a[1] was not set correctly.");
    assert(Util.compareReal(a[2], 3.0), "a[2] was not set correctly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.4", "12.4.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests declaration assignment to omitted left hand side component reference to discard on of the outputs from a function call.</html>"));

end CallMultiResultsWithOmittedOutput2;
