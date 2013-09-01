within ModelicaCompliance.Functions.Derivative;

model PartialDerivative
  extends Icons.TestCase;

  function Gibbs
    input Real p;
    input Real T;
    output Real g;
  algorithm
    g := p - T;
  end Gibbs;

  function Gibbs_T = der(Gibbs, T);

  function specificEnthalpy
    input Real p;
    input Real T;
    output Real h;
  algorithm
    h := Gibbs(p, T) - T * Gibbs_T(p, T);
  end specificEnthalpy;

  Real h = specificEnthalpy(23.4, 4.2);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.7.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the declaration of derivatives of functions using the
        derivative annotation.</html>"));
end PartialDerivative;
