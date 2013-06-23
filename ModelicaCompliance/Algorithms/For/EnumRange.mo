within ModelicaCompliance.Algorithms.For;

model EnumRange
  extends Icons.TestCase;

  type TwoEnums = enumeration(one, two);
  TwoEnums te[TwoEnums];
algorithm
  for e in TwoEnums.one : TwoEnums.two loop
    te[e] := e;
  end for;

  assert(te[TwoEnums.one] == TwoEnums.one, "te[TwoEnums.one] was not set correctly.");
  assert(te[TwoEnums.two] == TwoEnums.two, "te[TwoEnums.two] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of an enumeration range in a for-statement.</html>"));
end EnumRange;
