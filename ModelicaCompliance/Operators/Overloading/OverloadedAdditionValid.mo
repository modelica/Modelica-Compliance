within ModelicaCompliance.Operators.Overloading;

model OverloadedAdditionValid
  extends Icons.TestCase;

  operator record _Complex_
    Integer re;

    operator function '+'
      input _Complex_ i1;
      input _Complex_ i2;
      output _Complex_ o1;
    algorithm 
      o1 := _Complex_(i1.re + i2.re);
    end '+';

  end _Complex_;
  
  _Complex_ a = _Complex_(1);
  _Complex_ b = _Complex_(2);
  _Complex_ c = a + b;
equation
  assert(c.re == 3, "Overloaded '+' not matched properly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"14.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether operator '+' overloading is resolved properly.</html>"));

end OverloadedAdditionValid;

