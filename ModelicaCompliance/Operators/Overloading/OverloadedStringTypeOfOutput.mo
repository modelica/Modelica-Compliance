within ModelicaCompliance.Operators.Overloading;

model OverloadedStringTypeOfOutput
  extends Icons.TestCase;

  encapsulated package P
    operator record _Complex_
      Integer a1;

      encapsulated operator function 'String'
        import ModelicaCompliance.Operators.Overloading.OverloadedStringTypeOfOutput.P._Complex_;

        input _Complex_ a;
        output Integer s =  1;
      algorithm 
        s := 2;
      end 'String';

    end _Complex_;
  end P;

  import ModelicaCompliance.Operators.Overloading.OverloadedStringTypeOfOutput.P._Complex_;

  _Complex_ c = _Complex_(4);
  String s = String(c);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"14.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether String overloading returns the proper type.</html>"));

end OverloadedStringTypeOfOutput;

