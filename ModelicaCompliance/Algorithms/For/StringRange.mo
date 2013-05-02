within ModelicaCompliance.Algorithms.For;

model StringRange
  extends Icons.TestCase;

  String str[3];
algorithm
  for s in {"str1", "str2", "str3"} loop
    if s == "str1" then
      str[1] := s;
    elseif s == "str2" then
      str[2] := s;
    else
      str[3] := s;
    end if;
  end for;

  assert(str[1] == "str1", "str[1] was not set correctly.");
  assert(str[2] == "str2", "str[2] was not set correctly.");
  assert(str[3] == "str3", "str[3] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests the use of a string range in a for-statement.</html>"));
end StringRange;
