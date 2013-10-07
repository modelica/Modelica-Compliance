within ModelicaCompliance.Classes.Balancing;

model CorrectBalance4
  extends Icons.TestCase;

  partial package BaseMedium
    constant Integer nXi = 0 "Number of independent mass fractions";

    replaceable model BaseProperties 
      "Interface of medium model for all type of media"
      parameter Boolean preferredMediumStates=false;
      InputAbsolutePressure p(fixed = true, start = 1e6);
      InputSpecificEnthalpy h;
      InputMassFraction Xi[nXi];
      Real T(fixed = true, start = 298.15);
      Real d;
      Real u;
      connector InputAbsolutePressure = input Real;
      connector InputSpecificEnthalpy = input Real;
      connector InputMassFraction = input Real;
    end BaseProperties;
  end BaseMedium;

  package SimpleAir 
    "Medium model of simple air. Independent variables: p,T"
    extends BaseMedium(nXi = 0);
    
    redeclare model extends BaseProperties(
       p(stateSelect = if preferredMediumStates then StateSelect.prefer else StateSelect.default),
       T(stateSelect = if preferredMediumStates then StateSelect.prefer else StateSelect.default))
      constant Real R = 287;
      constant Real cp = 1005.45;
      constant Real T0 = 298.15;
    equation 
      d = p/(R*T);
      h = cp*(T - T0);
      u = h - p/d;
    end BaseProperties;
  end SimpleAir;

  connector FluidPort
    replaceable package Medium = BaseMedium;
    Real p;
    flow Real m_flow;
    Real h;
    flow Real H_flow;
    Real Xi[Medium.nXi] "Independent mixture mass fractions";
    flow Real mXi_flow[Medium.nXi] "Independent subst. mass flow rates";
  end FluidPort;

  model DynamicVolume
    parameter Real V = 10;
    replaceable package Medium = BaseMedium;
    FluidPort port(redeclare package Medium = Medium);
    Medium.BaseProperties medium(preferredMediumStates=true); // No modifier for p,h,Xi
    Real U;
    Real M;
    Real MXi[Medium.nXi];
  equation 
    U = medium.u * M;
    M = medium.d * V;
    MXi = medium.Xi * M;
    der(U) = port.H_flow; // Energy balance
    der(M) = port.m_flow; // Mass balance
    der(MXi) = port.mXi_flow; // Substance mass balance
    // Equations binding to medium (inputs)
    medium.p = port.p;
    medium.h = port.h;
    medium.Xi = port.Xi;
  end DynamicVolume;

  extends DynamicVolume(redeclare package Medium = SimpleAir);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.7"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that a balanced model works fine.</html>"));
end CorrectBalance4;
