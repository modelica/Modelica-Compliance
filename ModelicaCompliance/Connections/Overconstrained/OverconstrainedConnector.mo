within ModelicaCompliance.Connections.Overconstrained;

model OverconstrainedConnector
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
    Real r[3];
    Orientation R;
    flow Real f[3];
    flow Real t[3];
  end Frame;

  model FixedTranslation
    parameter Real r[3];
    Frame frame_a, frame_b;
  equation
    Connections.branch(frame_a.R, frame_b.R);
    frame_b.r = frame_a.r + transpose(frame_a.R) * r;
    frame_b.R = frame_a.R;
    zeros(3) = frame_a.f + frame_b.f;
    zeros(3) = frame_a.t + frame_b.t + cross(r, frame_b.f);
  end FixedTranslation;

  model InertialSystem
    Frame frame_b;
  equation
    Connections.root(frame_b.R);
    frame_b.r = zeros(3);
    frame_b.R = identity(3);
  end InertialSystem;

  FixedTranslation ft(r = {1, 2, 3});
  InertialSystem is;
equation
  connect(ft.frame_a, is.frame_b);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"9.4.3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests an example of an overconstrained connector.</html>"));
end OverconstrainedConnector;
