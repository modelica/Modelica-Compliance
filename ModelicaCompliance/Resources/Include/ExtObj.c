#ifndef EXTOBJ_C
#define EXTOBJ_C

#include <stdio.h>
#include <stdlib.h> /* for Linux malloc and exit */
#include <string.h>
#include <math.h>

#include "ExtObj.h"

/* Constructor for MyTable. */
void* initMyTable(double *table_data, size_t table_size)
{
  MyTable *table = (MyTable*)malloc(sizeof(MyTable));

  if (table == NULL) {
    printf("Not enough memory.\n");
    exit(-2);
  }

  table->array = (double*)malloc(table_size * sizeof(double));

  if(!table->array) {
    printf("Error allocating array in MyTable.\n");
    exit(-2);
  } 

  memcpy(table->array, table_data, table_size * sizeof(double));
  table->size = table_size;

  return (void*)table;
}

/* Destructor for MyTable. */
void closeMyTable(void *object)
{
  MyTable *table = (MyTable*)object;
  if (object == NULL) return;
  free(table->array);
  free(table);
} 

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
    printf("%f is outside the table interval.\n", u);
    exit(-2);
  }

  /* Fetch the two values from the table and use the fraction part of u to
   * interpolate between them. */
  val1 = table->array[idx];
  val2 = table->array[idx + 1];

  return val1 * (1.0 - fp) + val2 * fp;
}

#endif /*EXTOBJ_C*/
