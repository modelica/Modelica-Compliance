within ModelicaCompliance.Operators.Overloading;

model ConstructorNumberOfOutputs
  extends Icons.TestCase;
  
  encapsulated package P
    operator record _Complex_
      Integer re;
      Integer im;
      
      encapsulated operator 'constructor'
        import ModelicaCompliance.Operators.Overloading.ConstructorNumberOfOutputs.P._Complex_;
      
        function con1 
          input Integer i1;
          output _Complex_ o1;
          output _Complex_ o2 "This is not allowed. Only one output component per constructor expected.";
        algorithm
        end con1;
        
      end 'constructor';
      
    end _Complex_;
  end P;

  import ModelicaCompliance.Operators.Overloading.ConstructorNumberOfOutputs.P._Complex_;
  _Complex_ c = _Complex_(1);
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"14.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> The operator _Complex_.′constructor′ shall only contain functions that declare one output component, which shall
        be of the operator record class _Complex_.</html>"));
end ConstructorNumberOfOutputs;
