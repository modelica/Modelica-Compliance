within ModelicaCompliance.Functions.External;

model CDifferentInclude
  extends Icons.TestCase;

  package M
    function myExtra
      input Real x;
      output Real y;
      external "C" y = TestExtra(x) annotation(Include="#include <TestExtra.h>", 
      IncludeDirectory="modelica://ModelicaCompliance/Resources/Include/Extra");
   end myExtra;
  end M;

  parameter Real p = M.myExtra(0.5);
  
equation
  assert(Util.compareReal(p, 0.5), "p was not set correctly, " + String(p) + " <> 0.5.");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that external *C* is working.</html>"));
end CDifferentInclude;
