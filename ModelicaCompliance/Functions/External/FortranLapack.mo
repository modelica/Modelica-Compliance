within ModelicaCompliance.Functions.External;

model FortranLapack
  extends Icons.TestCase;

  function inv 
    input Real[:, size(A, 1)] A;
    output Real[size(A, 1), size(A, 2)] invA;
  protected
    Integer info;
    Integer[size(A, 1)] pivots;
    Real[size(A, 1), size(A, 2)] LU;
  algorithm
    (LU, pivots, info) := LAPACK.dgetrf(A);
    assert(info == 0, "Calculating an inverse matrix with function \"Matrices.inv\" is not possible, since matrix A is singular.");
    invA := LAPACK.dgetri(LU, pivots);
  end inv;

  package LAPACK 
    function dgetrf 
      input Real[:, :] A;
      output Real[size(A, 1), size(A, 2)] LU = A;
      output Integer[min(size(A, 1), size(A, 2))] pivots;
      output Integer info;
    protected
      Integer lda = max(1, size(A, 1));
      external "FORTRAN 77" dgetrf(size(A, 1), size(A, 2), LU, lda, pivots, info) annotation(Library="Lapack");
    end dgetrf;

    function dgetri 
      input Real[:, size(LU, 1)] LU;
      input Integer[size(LU, 1)] pivots;
      output Real[size(LU, 1), size(LU, 2)] inv = LU;
      output Integer info;
    protected
      Integer lda = max(1, size(LU, 1));
      Integer lwork = max(1, min(10, size(LU, 1)) * size(LU, 1));
      Real[max(1, min(10, size(LU, 1)) * size(LU, 1))] work;
      external "FORTRAN 77" dgetri(size(LU, 1), inv, lda, pivots, work, lwork, info) annotation(Library="Lapack");
    end dgetri;
  end LAPACK;

  parameter Integer N = 3;
  Real[N, N] A = identity(N);
  Real[N, N] B = identity(N);
  Real[N, N] C = inv(A) * B;
equation
  assert(Util.compareReal(C[1, 1], 1.0), "C[1, 1] was not calculated correctly.");
  assert(Util.compareReal(C[1, 2], 0.0), "C[1, 2] was not calculated correctly.");
  assert(Util.compareReal(C[1, 3], 0.0), "C[1, 3] was not calculated correctly.");
  assert(Util.compareReal(C[2, 1], 0.0), "C[2, 1] was not calculated correctly.");
  assert(Util.compareReal(C[2, 2], 1.0), "C[2, 2] was not calculated correctly.");
  assert(Util.compareReal(C[2, 3], 0.0), "C[2, 3] was not calculated correctly.");
  assert(Util.compareReal(C[3, 1], 0.0), "C[3, 1] was not calculated correctly.");
  assert(Util.compareReal(C[3, 2], 0.0), "C[3, 2] was not calculated correctly.");
  assert(Util.compareReal(C[3, 3], 1.0), "C[3, 3] was not calculated correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.9"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests external Fortran functions by using the Lapack library
        as used in the MSL.</html>"));
end FortranLapack;
