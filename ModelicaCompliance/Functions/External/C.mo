within ModelicaCompliance.Functions.External;

model C
  extends Icons.TestCase;

  package M
    function mySin
      input Real x;
      output Real y;
      external "C" y = externalSin(x) annotation(Include="
#include <stdio.h>
double externalSin(double x) 
{ 
  return sin(x);
}
");
   end mySin;
  end M;

  Real p = M.mySin(0.5);
  
equation
  assert(Util.compareReal(p, 0.479425538604203), "p was not set correctly, " + String(p) + " <> 0.479425538604203.");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that external *C* is working.</html>"));
end C;
