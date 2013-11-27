within ModelicaCompliance.Algorithms.Break;

model BreakWhile
  extends Icons.TestCase;

  function findValue
    input Integer x[:];
    input Integer val;
    output Integer index;
  algorithm
    index := size(x, 1);
    while index >= 1 loop
      if x[index] == val then
        break;
      else
        index := index - 1;
      end if;
    end while;
  end findValue;

  Integer n[5] = {1, 2, 3, 4, 5};
  Integer i = findValue(n, 4);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the functionality of <pre>break</pre> inside a while-loop.</html>"));
end BreakWhile;
