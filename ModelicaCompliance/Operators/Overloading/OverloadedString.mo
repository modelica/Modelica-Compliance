within ModelicaCompliance.Operators.Overloading;

model OverloadedString
  extends Icons.TestCase;

  operator record _Complex_
    Integer a1;

    operator function 'String'
      input _Complex_ a;
      output String s =  " ";
    algorithm
      s := String(a.a1);
    end 'String';

  end _Complex_;

  _Complex_ a = _Complex_(1);
  Boolean b = String(a) == "1";
equation
  assert(b, "Overloaded String not matched properly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"14.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests whether String overloading is resolved properly.</html>"));
end OverloadedString;
