within ModelicaCompliance.Packages;

model BOM
  extends Icons.TestCase;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"13.2.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>This test checks if it is possible to parse files with UTF-8
        byte order mark (0xef 0xbb 0xbf)</html>"));
end BOM;
