within ModelicaCompliance.Functions.External;

model CMapping2
  extends Icons.TestCase;
  
  type E = enumeration(one, two, three);
  
  package M
  
    function enumIncrement
      input E x;
      output E y;
      external "C" y = iincr(x) annotation(Include="
int iincr(int x)
{ 
  return x + 1;
}
");
   end enumIncrement;
  end M;

  E p = M.enumIncrement(E.one);
  
equation
  assert(p == E.two, "p was not set correctly, " + String(p) + " <> E.two.");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that external *C* mapping of Enumeration is working.</html>"));
end CMapping2;
