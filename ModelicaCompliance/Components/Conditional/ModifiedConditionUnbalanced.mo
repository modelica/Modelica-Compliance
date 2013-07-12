within ModelicaCompliance.Components.Conditional;

model ModifiedConditionUnbalanced
  extends Icons.TestCase;

  model M
    connector C
      Real e = 1.0;
      flow Real f;
    end C;

    parameter Boolean b1;
    parameter Boolean b2;
    C c1 if b1;
    C c2 if b2;
  equation
    connect(c1, c2);
  end M;

  M m(b1 = true, b2 = true);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a component condition can be a parameter that
        can be modified.</html>"));
end ModifiedConditionUnbalanced;
