within ModelicaCompliance.Scoping.InnerOuter;

model FunctionSelection
  extends Icons.TestCase;

  partial function A
   input Integer u;
   output Integer y;
  end A;

  function B // B is a subtype of A
    extends A;
  algorithm
    y := u;
  end B;
  
  function C // C is a subtype of A
    extends A;
  algorithm
    y := u + 1;
  end C;

  class D
    outer function fc = A;
    Integer y;
	parameter Integer u = 1;
   equation
    y = fc(u);
   end D;
   
   class E
     inner function fc = B; // define function to be actually used
     D d; // The equation is now treated as y = B(u)
   end E;

   class F
     inner function fc = C; // define function to be actually used
     D d; // The equation is now treated as y = C(u)
   end F;
   
   E e;
   F f;
equation
  assert(e.d.y == 1, "e.d.y was not set to the correct value!");
  assert(f.d.y == 2, "f.d.y was not set to the correct value!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4.1"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that inner/outer works with classes (functions).</html>"));
end FunctionSelection;
