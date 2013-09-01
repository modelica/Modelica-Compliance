within ModelicaCompliance.Operators.Overloading;

model OverloadedStringTypeOfOutput
  extends Icons.TestCase;

  operator record _Complex_
    Integer a1;

    operator function 'String'
      input _Complex_ a;
      output Integer s =  1;
    algorithm 
      s := 2;
    end 'String';

  end _Complex_;

  _Complex_ c = _Complex_(4);
  String s = String(c);
equation 
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"14.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether String overloading returns the proper type.</html>"));

end OverloadedStringTypeOfOutput;

