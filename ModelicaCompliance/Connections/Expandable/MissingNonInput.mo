within ModelicaCompliance.Connections.Expandable;


model MissingNonInput
  extends Icons.TestCase;

  expandable connector EC
  end EC;

  connector RealInput = input Real;

  model M
    model A
      RealInput ri = 1.0;
    end A;

    EC ec;
    A a;
  equation
    connect(a.ri, ec.ri);
  end M;

  M m;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.1.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that if a variable appears as an input in one
        expandable connector, then it should appear as a non-input in at least on
        other expandable connector instance in the same augmentation set.</html>"));
end MissingNonInput;
