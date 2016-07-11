within ModelicaCompliance.Operators.Overloading;

model ConstructorSimpleValid
  extends Icons.TestCase;

  encapsulated package P
    operator record _Complex_
      Integer re;
      Integer im;
      
      encapsulated operator 'constructor'
        import ModelicaCompliance.Operators.Overloading.ConstructorSimpleValid.P._Complex_;
      
        function con1
          input Integer i1;
          output _Complex_ o1(re=1,im=i1);
        algorithm 
        end con1;
     
      end 'constructor';

    end _Complex_;
  end P;

  import ModelicaCompliance.Operators.Overloading.ConstructorSimpleValid.P._Complex_;
      
  _Complex_ a = _Complex_(2);

equation 
  assert(a.re == 1, "Overloaded constructor should have been used.");
  assert(a.im == 2, "Overloaded constructor should have been used.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"14.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests a simple overloaded constructor.</html>"));
end ConstructorSimpleValid;
