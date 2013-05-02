within ModelicaCompliance.Algorithms.For;

model EnumTypeRange
  extends Icons.TestCase;

  type TwoEnums = enumeration(one, two);
  TwoEnums te[TwoEnums];
algorithm
  for e in TwoEnums loop
    te[e] := e;
  end for;

  assert(te[TwoEnums.one] == TwoEnums.one, "te[TwoEnums.one] was not set correctly.");
  assert(te[TwoEnums.two] == TwoEnums.two, "te[TwoEnums.two] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of an enumeration type as a range in a
        for-statement.</html>"));
end EnumTypeRange;
