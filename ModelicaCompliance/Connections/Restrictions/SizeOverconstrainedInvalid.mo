within ModelicaCompliance.Connections.Restrictions;

model SizeOverconstrainedInvalid
  extends Icons.TestCase;

  type TransformationMatrix = Real[3, 3];

  type Orientation
    extends TransformationMatrix;

    function equalityConstraint
      input Orientation R1;
      input Orientation R2;
      output Real residue[3];
    algorithm
      // Orientation is taken from the specification, but the calculation here
      // has been replaced with something much simpler so we test the relevant thing.
      residue := {R1[1, 1], R1[2, 2], R2[1, 1]};
    end equalityConstraint;
  end Orientation;

  connector Frame
    Real r[2];
    Orientation R;
    flow Real f[3];
    flow Real t[3];
  end Frame;

  Frame f(r = {1, 2}, R = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}});
equation
  .Connections.root(f.R);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"9.3.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a connector class with overdetermines types is
        rejected if it does not follow the size restrictions for connectors.</html>"));
end SizeOverconstrainedInvalid;
