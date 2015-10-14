within ModelicaCompliance.Functions.External;

model CMapping3
  extends Icons.TestCase;

  package M
    function realIncrement
      input Real x;
      output Real y;
      external "C" y = rincr(x) annotation(Include="
double rincr(double x)
{ 
  return x + 1;
}
");
   end realIncrement;
  end M;

  Integer p = integer(M.realIncrement(111));
  
equation
  assert(p == 112, "p was not set correctly, " + String(p) + " <> 112.");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that external *C* mapping of Real is working.</html>"));
end CMapping3;
