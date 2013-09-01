within ModelicaCompliance.Arrays;

package Operations
  extends Icons.TestPackage;

  annotation(Documentation(info = "<html>This package tests the built-in
    array operators and covers most of section 10.6. The exceptions are section
    10.6.9 which is tested by Arrays.Indexing and section 10.6.10 which is
    tested by Operators.Relational (since relational operators are not defined
    for arrays, only scalars).</html>"));
end Operations;
