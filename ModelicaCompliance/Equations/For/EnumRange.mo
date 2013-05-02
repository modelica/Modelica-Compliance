within ModelicaCompliance.Equations.For;

model EnumRange
  extends Icons.TestCase;

  type TwoEnums = enumeration(one, two);
  TwoEnums te[TwoEnums];
equation
  for e in TwoEnums.one : TwoEnums.two loop
    te[e] = e;
  end for;

  assert(te[TwoEnums.one] == TwoEnums.one, "te[TwoEnums.one] was not set correctly.");
  assert(te[TwoEnums.two] == TwoEnums.two, "te[TwoEnums.two] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the use of an enumeration range in a for-equation.</html>"));
end EnumRange;
