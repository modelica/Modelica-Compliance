within ModelicaCompliance.Functions.External;

model CMapping1
  extends Icons.TestCase;

  package M
    function intIncrement
      input Integer x;
      output Integer y;
      external "C" y = iincr(x) annotation(Include="
int iincr(int x)
{ 
  return x + 1;
}
");
   end intIncrement;
  end M;

  Integer p = M.intIncrement(111);
  
equation
  assert(p == 112, "p was not set correctly, " + String(p) + " <> 112.");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that external *C* mapping of Integer is working.</html>"));
end CMapping1;
