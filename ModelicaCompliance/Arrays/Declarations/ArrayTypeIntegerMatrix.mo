within ModelicaCompliance.Arrays.Declarations;

model ArrayTypeIntegerMatrix
  extends Icons.TestCase;

  Integer x[2,3] = [ 1,2,3 ; 4,5,6 ] ;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to declare arrays of type Integer matrix.</html>"));
end ArrayTypeIntegerMatrix;
