within ModelicaCompliance.Modification.Restrictions;

model FinalWrong
  extends Icons.TestCase;

  model TransferFunction
    parameter Real b[:] = {1} "numerator coefficient vector";
    parameter Real a[:] = {1,1} "denominator coefficient vector";
  end TransferFunction;

  model PI "PI controller"
    parameter Real k=1 "gain";
    parameter Real T=1 "time constant";
    TransferFunction tf(final b=k*{T,1}, final a={T,0});
  end PI;

  PI c1(k=2, T=3); // fine
  PI c2(tf(b={1})); // error, b is declared as final
  
equation
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"7.2.6"})),
    experiment(StopTime = 0.01),
    Documentation(info = "<html>Checks that modification of final gives error.</html>"));
end FinalWrong;
