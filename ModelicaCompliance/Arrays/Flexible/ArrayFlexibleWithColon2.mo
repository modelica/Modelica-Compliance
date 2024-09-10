within ModelicaCompliance.Arrays.Flexible;

model ArrayFlexibleWithColon2
  extends Icons.TestCase;

  function collectPositive
    input Integer x[:];
    output Integer xpos[:];
  algorithm
    for i in 1:size(x,1) loop
      if x[i]>0 then
        xpos:=cat(1,xpos,x[i:i]);
      end if;
    end for;
  end collectPositive;

  Integer a[:] = {-2,1,0,-1,2};
  Integer x[:] (start= collectPositive(a));
equation
  assert(size(x, 1) == 2, "Array should have two elements");
  assert(x[1] == 1, "The element of x[1] must be 1");
  assert(x[2] == 2, "The element of x[2] must be 2");
  when false then
     x = pre(x);
   end when;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.1", "12.4.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that flexible setting of array dimension sizes of arrays in functions is possible.</html>"));
end ArrayFlexibleWithColon2;
