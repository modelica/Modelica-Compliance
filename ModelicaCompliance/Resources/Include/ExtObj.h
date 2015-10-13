#ifndef EXTOBJ_H
#define EXTOBJ_H

typedef struct {
  double* array;
  unsigned size;
} MyTable;

void* initMyTable(double *table_data, size_t table_size);
void closeMyTable(void* object);
double interpolateMyTable(void* object, double u);

#endif /*EXTOBJ_H*/
