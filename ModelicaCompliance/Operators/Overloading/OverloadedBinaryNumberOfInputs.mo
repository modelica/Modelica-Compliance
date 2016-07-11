within ModelicaCompliance.Operators.Overloading;

model OverloadedBinaryNumberOfInputs
  extends Icons.TestCase;

  encapsulated package P
    operator record _Complex_
      Integer a1;

      encapsulated operator function '+'
        import ModelicaCompliance.Operators.Overloading.OverloadedBinaryNumberOfInputs.P._Complex_;

        input _Complex_ a1;
        output _Complex_ o1;
      algorithm 
          o1 := _Complex_(a1.a1);
      end '+';

    end _Complex_;
  end P;

  import ModelicaCompliance.Operators.Overloading.OverloadedBinaryNumberOfInputs.P._Complex_;

  _Complex_ c1 = _Complex_(1);
  _Complex_ c2 = _Complex_(2);
  _Complex_ c3 = c1 + c2;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"14.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Overloaded binary operator function should have at least two inputs.</html>"));

end OverloadedBinaryNumberOfInputs;

