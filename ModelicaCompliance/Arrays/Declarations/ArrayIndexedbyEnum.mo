within ModelicaCompliance.Arrays.Declarations;

model ArrayIndexedbyEnum
  extends Icons.TestCase;

  type TwoEnums = enumeration(one,two); 
  Real[TwoEnums] y; 

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays indexed by enumeration values.</html>"));
end ArrayIndexedbyEnum;
