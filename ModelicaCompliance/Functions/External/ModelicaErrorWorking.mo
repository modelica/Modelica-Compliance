within ModelicaCompliance.Functions.External;

model ModelicaErrorWorking
  function errorOnceReturnIdent
    input Real t_;
    output Real d;
  external "C" d = errorOnceReturnIdent(t_) annotation (
        Include = "
#include \"ModelicaUtilities.h\"
double errorOnceReturnIdent(double t_) {
  static int s = 1;
  if (s && t_ > 0.5) {
    s = 0;
    ModelicaError(\"Only once\\n\");
  }
  return 1.;
}");
  end errorOnceReturnIdent;
  Real x(start=0,fixed=true);
equation
  der(x) = errorOnceReturnIdent(time);
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.9.6"})),
    experiment(StopTime = 1.0),
    Documentation(
      info = "<html>Tests that ModelicaError does not cause the model to fail instantly.</html>"));
end ModelicaErrorWorking;
