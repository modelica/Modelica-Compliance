within ModelicaCompliance.Operators.Overloading;

model OverloadedLogicalOperation
  extends Icons.TestCase;

  encapsulated package P
    operator record _Complex_
      Boolean re;
      Boolean im;

      encapsulated operator 'constructor'  " Constructor"
        import ModelicaCompliance.Operators.Overloading.OverloadedLogicalOperation.P._Complex_;

        function fromBoolean "Construct _Complex_ from Boolean"
          input Boolean re ;
          input Boolean im = false;
          output _Complex_ result;
        algorithm
          result.re := re;
          result.im := im;
        end fromBoolean;
      end 'constructor';
      
      encapsulated operator function 'and' "Test whether two _Complex_ numbers are identical"
        import ModelicaCompliance.Operators.Overloading.OverloadedLogicalOperation.P._Complex_;

        input _Complex_ c1;
        input _Complex_ c2;
        output Boolean result ;
      algorithm
        result := c1.re == c2.re and c1.im == c2.im;
      end 'and';

    end _Complex_;
  end P;
  
  import ModelicaCompliance.Operators.Overloading.OverloadedLogicalOperation.P._Complex_;

  _Complex_ a = _Complex_(true);
  _Complex_ b = _Complex_(true);
equation
  assert(a and b, "Overloaded '==' not matched properly.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"14.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests whether relational operator overloading is resolved properly.</html>"));

end OverloadedLogicalOperation;

