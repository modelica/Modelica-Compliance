within ModelicaCompliance.Operators.Overloading;

model ConstructorNumberOfOutputs
  extends Icons.TestCase;
  
  operator record _Complex_
    Integer re;
    Integer im;
    
    operator 'constructor'
    
      function con1 
        input Integer i1;
        output _Complex_ o1;
        output _Complex_ o2 "This is not allowed. Only one output component per constructor expected.";
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
end ConstructorNumberOfOutputs;
