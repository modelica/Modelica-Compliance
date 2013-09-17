within ModelicaCompliance.Scoping.NameLookup.Global;


model LocalNameGlobalLookup
  extends Icons.TestCase;

  package ModelicaCompliance
    package Scoping
      package NameLookup
        package Global
          model LocalNameGlobalLookup
            encapsulated model A
              Real x = 1.0;
            end A;
          end LocalNameGlobalLookup;
        end Global;
      end NameLookup;
    end Scoping;
  end ModelicaCompliance;

  encapsulated model A
    Real x = 2.0;
  end A;

  .ModelicaCompliance.Scoping.NameLookup.Global.LocalNameGlobalLookup.A a;
equation
  assert(Util.compareReal(a.x, 2.0), "a.x was not correctly set.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"5.3.3"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that the global name lookup start from the global
        scope, and not the local.</html>"));
end LocalNameGlobalLookup;
