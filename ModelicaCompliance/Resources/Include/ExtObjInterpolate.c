#include "ExtObj.h"

#include <stdio.h>
#include <string.h>
#include <math.h>
#include "ModelicaUtilities.h"

/* Interpolates between two adjacent values in the table. */
double interpolateMyTable(void *object, double u)
{
  MyTable *table = (MyTable*)object;
  double ip, fp, val1, val2;
  long idx;

  /* Use modf to break u into integer and fraction part. */
  fp = modf(u, &ip);
  /* Use the integer part of u to get the table index for the first value.*/
  idx = (long) (ip + 0.5);

  if(u < 0.0 || idx >= table->size - 1) {
    ModelicaFormatError("%f is outside the table interval.\n", u);
    return 0; /* Not reachable */
  }

  /* Fetch the two values from the table and use the fraction part of u to
   * interpolate between them. */
  val1 = table->array[idx];
  val2 = table->array[idx + 1];

  return val1 * (1.0 - fp) + val2 * fp;
}
