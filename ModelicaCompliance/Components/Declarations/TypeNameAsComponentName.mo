within ModelicaCompliance.Components.Declarations;

package TypeNameAsComponentName
  type x = Real;

  model TypeNameAsComponentName
    extends Icons.TestCase;

    x x = 1.0;

    annotation (
      __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.4.2"})),
      experiment(StopTime = 0.01),
      Documentation(
        info = "<html>Checks that a component is not allowed to have the same
          name is its type specifier.</html>"));
  end TypeNameAsComponentName;
end TypeNameAsComponentName;
