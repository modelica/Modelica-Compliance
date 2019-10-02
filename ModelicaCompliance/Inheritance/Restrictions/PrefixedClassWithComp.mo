within ModelicaCompliance.Inheritance.Restrictions;

model PrefixedClassWithComp
  extends Icons.TestCase;

  model A
    Real x = 1.0;
  end A;

  model CA = input A;

  model B
    Real y = 2.0;
  end B;

  model C
    extends CA;
    extends B;
  end C;

  C c;
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.5.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that it's not legal to combine an extends from a
        class with non-empty base-prefix with a component in a class.</html>"));
end PrefixedClassWithComp;
