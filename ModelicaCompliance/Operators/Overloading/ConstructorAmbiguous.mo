within ModelicaCompliance.Operators.Overloading;

model ConstructorAmbiguous
  extends Icons.TestCase;

  encapsulated package P
    record _Complex_
      Integer re;
      Integer im;
      
      encapsulated operator 'constructor'
        import ModelicaCompliance.Operators.Overloading.ConstructorAmbiguous.P._Complex_;
        
        function con1
          input Integer i1;
          output _Complex_ o1(re=1,im=i1);
        algorithm 
        end con1;
        
        function con2 "This constructor causes ambiguity."
          input Integer i1;
          output _Complex_ o1(re=1,im=i1);
        algorithm
        end con2;
        
      end 'constructor';

    end _Complex_;
  end P;
  
  import ModelicaCompliance.Operators.Overloading.ConstructorAmbiguous.P._Complex_;

  _Complex_ c = _Complex_(1);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"14.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests if ambiguous constructor declarations are detected properly.</html>"));
end ConstructorAmbiguous;
