within ModelicaCompliance.Classes.Balancing;

model CorrectBalance5
  extends Icons.TestCase;
 
  partial package BaseMedium
    constant Integer nXi = 0 "Number of independent mass fractions";

    replaceable partial model BaseProperties 
      "Interface of medium model for all type of media"
      parameter Boolean preferredMediumStates=false;
      InputAbsolutePressure p;
      InputSpecificEnthalpy h;
      InputMassFraction Xi[nXi];
      Real T;
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

  model FixedBoundary_pTX
    parameter Real p "Predefined boundary pressure";
    parameter Real T "Predefined boundary temperature";
    parameter Real Xi[Medium.nXi] "Predefined boundary mass fraction";
    replaceable package Medium = BaseMedium;
    FluidPort port(redeclare package Medium = Medium);
    Medium.BaseProperties medium;
  equation
    port.p = p;
    port.H_flow = semiLinear(port.m_flow, port.h , medium.h);
    port.mXi_flow = semiLinear(port.m_flow, port.Xi, medium.Xi);
    // Equations binding to medium (note: T is not an input).
    medium.p = p;
    medium.T = T;
    medium.Xi = Xi;
  end FixedBoundary_pTX;

  extends FixedBoundary_pTX(redeclare package Medium = SimpleAir, p = 1.0, T = 100.0);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"4.7"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that a balanced model works fine.</html>"));
end CorrectBalance5;
