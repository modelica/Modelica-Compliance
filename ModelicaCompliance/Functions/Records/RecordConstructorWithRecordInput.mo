within ModelicaCompliance.Functions.Records;

model RecordConstructorWithRecordInput
  extends Icons.TestCase;

  record One
    Integer x = 42;
  end One;
  
  record Test
    One a = One(101010);
  end Test;
  
  One o = One(1984);
  Test t = Test(o);
equation
  assert(t.a.x == 1984, "t.a should have been modified.");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html> Tests simple record modification.</html>"));

end RecordConstructorWithRecordInput;

