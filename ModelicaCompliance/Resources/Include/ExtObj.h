#ifndef EXTOBJ_H
#define EXTOBJ_H

typedef struct {
  double* array;
  unsigned size;
} MyTable;

static void* initMyTable(double *table_data, size_t table_size);
static void closeMyTable(void* object);
static double interpolateMyTable(void* object, double u);

#endif /*EXTOBJ_H*/
