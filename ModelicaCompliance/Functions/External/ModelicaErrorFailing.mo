within ModelicaCompliance.Functions.External;

model ModelicaErrorFailing
  function errorNoReturn
    input Real t_;
    output Real d;
  external "C" d = errorNoReturn(t_) annotation (
        Include = "
#include \"ModelicaUtilities.h\"
double errorNoReturn(double t_) {
  if (t_ >= 0.5) {
    ModelicaError(\"Failure\\n\");
  }
  return t_;
}");
  end errorNoReturn;
  Real x(start=0,fixed=true);
equation
  der(x) = errorNoReturn(time);
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"12.9.6"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Tests that external ModelicaError can fail.</html>"));
end ModelicaErrorFailing;
