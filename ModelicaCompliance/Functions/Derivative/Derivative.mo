within ModelicaCompliance.Functions.Derivative;

model Derivative
  extends Icons.TestCase;

  function foo0
    input Real x;
    input Boolean b;
    output Real y;
  algorithm
    if b then
      y := sin(x);
    else
      y := x;
    end if;
    annotation(derivative = foo1);
  end foo0;

  function foo1
    input Real x;
    input Boolean b;
    input Real der_x;
    output Real der_y;
  algorithm
    if b then
      der_y := cos(x) * der_x;
    else
      der_y := der_x;
    end if;
    annotation(derivative(order = 1) = foo2);
  end foo1;

  function foo2
    input Real x;
    input Boolean b;
    input Real der_x;
    input Real der_2_x;
    output Real der_2_y;
  algorithm
    if b then
      der_2_y := cos(x) * der_2_x - sin(x) * der_x * der_x;
    else
      der_2_y := der_2_x;
    end if;
  end foo2;

  Real x[3];
  Real u[3](each fixed = false);
  type IC = Real(start = 0, fixed = true);
  IC ic[2] = x[1:2] - u[1:2];
  parameter Boolean b = true;
equation
  x[1] = foo0(exp(time), b);
  der(x[1:2]) = x[2:3];
  x[3] = u[3];
  der(u[1:2]) = u[2:3];

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.7.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the declaration of derivatives of functions using the
        derivative annotation.</html>"));
end Derivative;
