within ModelicaCompliance.Algorithms.For;

model VarArrayRange
  extends Icons.TestCase;

  function f
    input Integer inN;
    output Integer outN;
  protected
    Integer x[:];
    Integer s;
  algorithm
    outN := 1;
    x := ones(inN);

    for i loop
      s := size(x, 1);
      x := ones(s - x[i]);
      outN := outN * s;
    end for;
  end f;

  Integer n = f(5);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Checks that an array used as a range expression in a
      for-equation isn't allowed to change size during the execution of the loop.</html>"));
end VarArrayRange;
