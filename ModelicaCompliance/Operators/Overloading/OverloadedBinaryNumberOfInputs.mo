within ModelicaCompliance.Operators.Overloading;

model OverloadedBinaryNumberOfInputs
  extends Icons.TestCase;

  operator record _Complex_
    Integer a1;

    operator function '+'
      input _Complex_ a1;
      output _Complex_ o1;
    algorithm 
        o1 := _Complex_(a1.a1);
    end '+';

  end _Complex_;

equation
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"14.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Overloaded binary operator function should have at least two inputs.</html>"));

end OverloadedBinaryNumberOfInputs;

