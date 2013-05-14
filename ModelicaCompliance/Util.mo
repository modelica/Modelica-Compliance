within ModelicaCompliance;

package Util
  function compareReal
    "Compares two Reals, and checks if they are close enough to be considered equal."
    input Real a, b;
    input Real absTol := 1e-10 "Absolute tolerance.";
    input Real relTol := 1e-5 "Relative tolerance.";
    output Boolean equal;
  protected
    Real diff;
  algorithm
    diff := abs(a - b);
    equal := diff < absTol or diff <= max(abs(b), abs(a)) * relTol;
  end compareReal;
end Util;
