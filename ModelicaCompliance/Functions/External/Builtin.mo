within ModelicaCompliance.Functions.External;

model Builtin
  extends Icons.TestCase;

  package M
    function mySin
      input Real x;
      output Real y;
      external "builtin" y = sin(x);
   end mySin;
  end M;

  parameter Real p = M.mySin(0.5);
  
equation
  assert(Util.compareReal(p, 0.479425538604203), "x was not set correctly, " + String(x) + " <> 0.479425538604203.");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that external *builtin* is working.</html>"));
end Builtin;
