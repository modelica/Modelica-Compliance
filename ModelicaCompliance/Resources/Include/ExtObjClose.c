#include "ExtObj.h"

#include <stdio.h>
#include <stdlib.h> /* for Linux malloc and exit */
#include <string.h>
#include "ModelicaUtilities.h"

/* Destructor for MyTable. */
void closeMyTable(void *object)
{
  MyTable *table = (MyTable*)object;
  if (object == NULL) return;
  free(table->array);
  free(table);
} 