within ModelicaCompliance.Functions.External;
model CImpure
  extends Icons.TestCase;
  function impureFunction "The impure annotation should not be needed."
     output Real y;
    external "C" annotation(Include="double impureFunction() {static double x=0;x+=1;return x;}");
   annotation( __ModelicaAssociation_Impure=true);
  end impureFunction;
  Real x(start=0, fixed=true),y(start=1, fixed=true);
equation
  when sample(1e-3,1e-3) then
     x=impureFunction();
     y=x-pre(x);
  end when;
  assert(abs(y-1)<1e-3,"Difference should be 1");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Test that functions in when-clauses are not optimized too much, causing problems for impure functions.</html>"));
end CImpure;
