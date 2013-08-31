within ModelicaCompliance.Scoping.InnerOuter;

model ComplicatedNameLookup
  extends Icons.TestCase;

  class A
    outer Integer TI;

    class B
      Integer TI = 1;
      
      class C
        Integer TI = 2;

        class D
          outer Integer TI;
        end D;
        
        D d;
      end C;

      C c;
    end B;

    B b;
  end A;

  class E
    inner Integer TI = 3;

    class F
      inner Integer TI = 4;
      
      class G
        Integer TI = 5;

        class H
          A a;
        end H;

        H h;
      end G;
    
      G g;
    end F;

    F f;

  end E;

  class I
    inner Integer TI = 10;
    E e;
    // e.f.g.h.a.TI, e.f.g.h.a.b.c.d.TI, and e.f.TI is the same variable
    // But e.f.TI, e.TI and TI are different variables
    A a; // a.TI, a.b.c.d.TI, and TI is the same variable
  end I;
  
  I i;
equation
  assert(i.TI == 10, "i.TI was not set correctly!");
  assert(i.a.b.TI == 1, "i.a.b.TI was not set correctly!");
  assert(i.a.b.c.TI == 2, "i.a.b.c.TI was not set correctly!");
  assert(i.e.TI == 3, "i.e.TI was not set correctly!");
  assert(i.e.f.TI == 4, "i.e.f.TI was not set correctly!");
  assert(i.e.f.g.TI == 5, "i.e.f.g.TI was not set correctly!");
  assert(i.e.f.g.h.a.b.TI == 1, "i.e.f.g.h.a.b.TI was not set correctly!");
  assert(i.e.f.g.h.a.b.c.TI == 2, "i.e.f.g.h.a.b.c.TI was not set correctly!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.4"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that inner and outer have the same value. Shadowing of inner.</html>"));
end ComplicatedNameLookup;