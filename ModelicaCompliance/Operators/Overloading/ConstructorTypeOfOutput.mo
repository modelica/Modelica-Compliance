within ModelicaCompliance.Operators.Overloading;

model ConstructorTypeOfOutput
  extends Icons.TestCase;
  
  operator record _Complex_
    Integer re;
    Integer im;
    
    operator 'constructor'
    
      function con1 
        input Integer i1;
        output Integer o1 "This should have returned a component of type _Complex_";
      algorithm
      end con1;
      
    end 'constructor';
    
  end _Complex_;
equation
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"14.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> The operator _Complex_.′constructor′ shall only contain functions that declare one output component, which shall
        be of the operator record class _Complex_.</html>"));
end ConstructorTypeOfOutput;
