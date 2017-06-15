within ModelicaCompliance.Equations.When;
model WhenFooInitial
  function foo
    input Boolean b;
    output Boolean b2;
  algorithm
    b2:=b;
   annotation(Inline=false); // Should not be needed
  end foo;
  Real x;
  Real y;
  Real z;
  parameter Real p(fixed=false);
  parameter Real q(fixed=false);
  parameter Real r(fixed=false);
equation
  when {foo(initial()),sample(0.1,0.1)} then
    x=2;
  end when;
  when {initial(),sample(0.1,0.1)} then
    y=2;
  end when;
  when foo(initial()) then
    z=2;
  end when;
  assert(abs(p)<1e-3,"Only intial() not foo(initial()) is active at initialization");
  assert(abs(q-2)<1e-3,"But intial() is active at initialization");
  assert(abs(r)<1e-3,"Only intial() not foo(initial()) is active at initialization");
initial equation
  x=p;
  y=q;
  z=r;
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"8.6"})),
    experiment(StopTime = 0.2),
    Documentation(
      info = "<html>Tests that when foo(initial()) is not active at initialization.</html>"));
end WhenFooInitial;