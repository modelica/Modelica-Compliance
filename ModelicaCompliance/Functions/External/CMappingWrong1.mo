within ModelicaCompliance.Functions.External;

model CMappingWrong1
  extends Icons.TestCase;

  package M
    function realIncrement
      input Real x;
      output Real y;
      external "C" y = dincr(x) annotation(Include="
double rincr(double x) /* wrong name, should be dincr */
{ 
  return x + 1;
}
");
   end realIncrement;
  end M;

  Integer p = integer(M.realIncrement(111));
  
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that external *C* does not work if the external function name is different than the one in the external function definition. We should get an undefined identifier during compilation.</html>"));
end CMappingWrong1;
