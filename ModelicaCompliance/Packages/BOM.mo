within ModelicaCompliance.Packages; /* [13.2.2] This test only checks if it is possible to parse files with UTF-8 byte order mark (0xef 0xbb 0xbf) */

model BOM
  extends Icons.TestCase;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html></html>"));
end BOM;
