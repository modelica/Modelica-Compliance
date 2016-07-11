within ModelicaCompliance.Classes.Balancing;

model WrongBalance
  extends Icons.TestCase;

  partial model BaseCorrelation
    input Real x;
    Real y;
  end BaseCorrelation;

  model SpecialCorrelation // correct in Modelica 2.2 and 3.0
    extends BaseCorrelation(x=2);
  equation
    y = 2/x;
  end SpecialCorrelation;

  model UseCorrelation // correct according to Modelica 2.2
                       // not valid according to Modelica 3.0
    replaceable model Correlation = BaseCorrelation;
    Correlation correlation;
  equation
    correlation.y = time;
  end UseCorrelation;

  UseCorrelation example(redeclare model Correlation = SpecialCorrelation);

equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.7"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that an unbalanced model generates an error.</html>"));
end WrongBalance;

