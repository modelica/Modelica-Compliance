within ModelicaCompliance.Operators.Precedence;

model RelationalPrecedence
  extends Icons.TestCase;
 
equation
  assert(1 + 1 < 3, "+ should have higher precedence than <"); 
  assert(4 - 2 < 3, "- should have higher precedence than <");
  assert(2 * 2 < 5, "* should have higher precedence than <");
  assert(4 / 2 < 4, "/ should have higher precedence than <");
  assert(2 ^ 3 < 9, "^ should have higher precedence than <");
  assert(1 + 1 <= 3, "+ should have higher precedence than <="); 
  assert(4 - 2 <= 3, "- should have higher precedence than <=");
  assert(2 * 2 <= 5, "* should have higher precedence than <=");
  assert(4 / 2 <= 4, "/ should have higher precedence than <=");
  assert(2 ^ 3 <= 9, "^ should have higher precedence than <=");
  assert(1 + 1 > 1, "+ should have higher precedence than >"); 
  assert(4 - 2 > 1, "- should have higher precedence than >");
  assert(2 * 2 > 1, "* should have higher precedence than >");
  assert(4 / 2 > 1, "/ should have higher precedence than >");
  assert(2 ^ 3 > 1, "^ should have higher precedence than >");
  assert(1 + 1 >= 1, "+ should have higher precedence than >="); 
  assert(4 - 2 >= 1, "- should have higher precedence than >=");
  assert(2 * 2 >= 1, "* should have higher precedence than >=");
  assert(4 / 2 >= 1, "/ should have higher precedence than >=");
  assert(2 ^ 3 >= 1, "^ should have higher precedence than >=");
  assert(1 + 1 == 2, "+ should have higher precedence than =="); 
  assert(4 - 2 == 2, "- should have higher precedence than ==");
  assert(2 * 2 == 4, "* should have higher precedence than ==");
  assert(4 / 2 == 2, "/ should have higher precedence than ==");
  assert(2 ^ 3 == 8, "^ should have higher precedence than ==");
  assert(1 + 1 <> 1, "+ should have higher precedence than <>"); 
  assert(4 - 2 <> 1, "- should have higher precedence than <>");
  assert(2 * 2 <> 1, "* should have higher precedence than <>");
  assert(4 / 2 <> 1, "/ should have higher precedence than <>");
  assert(2 ^ 3 <> 1, "^ should have higher precedence than <>");

  assert(not 3 < 2, "'not' should have lower precedence than <");
  assert(not 3 <= 2, "'not' should have lower precedence than <=");
  assert(not 3 > 4, "'not' should have lower precedence than >");
  assert(not 3 >= 4, "'not' should have lower precedence than >=");
  assert(not 3 == 2, "'not' should have lower precedence than ==");
  assert(not 3 <> 3, "'not' should have lower precedence than <>");
  assert(true and 2 < 3, "'and' should have lower precedence than <");
  assert(true and 2 <= 3, "'and' should have lower precedence than <=");
  assert(true and 4 > 3, "'and' should have lower precedence than >");
  assert(true and 4 >= 3, "'and' should have lower precedence than >=");
  assert(true and 2 == 2, "'and' should have lower precedence than ==");
  assert(true and 2 <> 3, "'and' should have lower precedence than <>");
  assert(false or 2 < 3, "'or' should have lower precedence than <");
  assert(false or 2 <= 3, "'or' should have lower precedence than <=");
  assert(false or 4 > 3, "'or' should have lower precedence than >");
  assert(false or 4 >= 3, "'or' should have lower precedence than >=");
  assert(false or 2 == 2, "'or' should have lower precedence than ==");
  assert(false or 2 <> 3, "'or' should have lower precedence than <>");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the precedence of the relational operators.</html>"));
end RelationalPrecedence;
