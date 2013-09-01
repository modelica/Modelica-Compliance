within ModelicaCompliance.Classes.Enumeration;

model WrongType2
  extends Icons.TestCase;

  type Init = enumeration(
       NoInit "No initialization (start values are used as guess values with fixed=false)",
       SteadyState "Steady state initialization (derivatives of states are zero)",
       InitialState "Initialization with initial states",
       InitialOutput "Initialization with initial outputs (and steady state of the states if possibles)")
       "Enumeration defining initialization of a block";

  type InitPID = enumeration(
        NoInit "No initialization (start values are used as guess values with fixed=false)",
        SteadyState "Steady state initialization (derivatives of states are zero)",
        InitialState "Initialization with initial states",
        InitialOutput "Initialization with initial outputs (and steady state of the states if possibles)",
        DoNotUse_InitialIntegratorState "Don't use, only for backward compatibility (initialize only integrator state)")
        "Enumeration defining initialization of PID and LimPID blocks";

  parameter InitPID iPID = 1; 
  parameter Init i = 3;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.8.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that a enumeration variable cannot be assigned an Integer.</html>"));
end WrongType2;
