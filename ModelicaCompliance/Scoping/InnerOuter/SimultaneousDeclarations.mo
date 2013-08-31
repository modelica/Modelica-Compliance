within ModelicaCompliance.Scoping.InnerOuter;

model SimultaneousDeclarations
  extends Icons.TestCase;

  model ConditionalIntegrator "Simple differential equation if isEnabled"
   outer Boolean isEnabled;
   Real x(start=1);
  equation
   der(x) = if isEnabled then -x else 0;
  end ConditionalIntegrator;

  model SubSystem "subsystem that 'enable' its conditional integrators"
    Boolean enableMe = false;
    // Set inner isEnabled to outer isEnabled and enableMe
    inner outer Boolean isEnabled = isEnabled and enableMe;
    ConditionalIntegrator conditionalIntegrator;
  end SubSystem;

  model System
    SubSystem subSystem;
    inner Boolean isEnabled = true;
    // subSystem.conditionalIntegrator.isEnabled will be
    // 'isEnabled and subSystem.enableMe'
  end System;
  
  System system;
equation
  assert(system.subSystem.isEnabled == true, "system.subSystem.isEnabled is not set to the corect value of the inner!");
  assert(system.subSystem.conditionalIntegrator.isEnabled == false, "system.subSystem.conditionalIntegrator.isEnabled is not set to the corect value of the inner!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.5"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Check simultaneous inner/outer declarations.</html>"));
end SimultaneousDeclarations;
