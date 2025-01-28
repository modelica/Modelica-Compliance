#include "ExtObj.h"

#include <stdlib.h> /* for Linux malloc, free and exit */
#include "ModelicaUtilities.h"

/* Destructor for MyTable. */
void closeMyTable(void *object)
{
  MyTable *table = (MyTable*)object;
  if (object == NULL) return;
  free(table->array);
  free(table);
}
