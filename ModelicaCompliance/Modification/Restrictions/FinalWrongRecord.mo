within ModelicaCompliance.Modification.Restrictions;

model FinalWrongRecord
  extends Icons.TestCase;

  record R
    final parameter Integer i1 = 10;
    parameter Integer i2 = 20;
  end R;
  
  R r(i1 = 300);
    
equation 
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.2.6"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that modification of final gives error.</html>"));
end FinalWrongRecord;
