within ModelicaCompliance.Operators.Overloading;

model ConstructorTypeOfOutput
  extends Icons.TestCase;
    
  encapsulated package P
    operator record _Complex_
      Integer re;
      Integer im;
      
      encapsulated operator 'constructor'
        import ModelicaCompliance.Operators.Overloading.ConstructorTypeOfOutput.P._Complex_;
      
        function con1 
          input Integer i1;
          output Integer o1 "This should have returned a component of type _Complex_";
        algorithm
          o1 := i1;
        end con1;
        
      end 'constructor';
    end _Complex_;
  end P;

  import ModelicaCompliance.Operators.Overloading.ConstructorTypeOfOutput.P._Complex_;

  _Complex_ a = _Complex_(3);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"14.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> The operator _Complex_.′constructor′ shall only contain functions that declare one output component, which shall
        be of the operator record class _Complex_.</html>"));
end ConstructorTypeOfOutput;
