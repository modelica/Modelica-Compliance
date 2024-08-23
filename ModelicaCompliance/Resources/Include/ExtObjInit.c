#include "ExtObj.h"

#include <stdio.h>
#include <stdlib.h> /* for Linux malloc and exit */
#include <string.h>
#include "ModelicaUtilities.h"

/* Constructor for MyTable. */
void* initMyTable(double *table_data, size_t table_size)
{
  MyTable *table = (MyTable*)malloc(sizeof(MyTable));

  if (table == NULL) {
    ModelicaError("Not enough memory.\n");
    return 0; /* Not reachable */
  }

  table->array = (double*)malloc(table_size * sizeof(double));

  if(!table->array) {
    free(table);
    ModelicaError("Error allocating array in MyTable.\n");
    return 0; /* Not reachable */
  } 

  memcpy(table->array, table_data, table_size * sizeof(double));
  table->size = table_size;

  return (void*)table;
}