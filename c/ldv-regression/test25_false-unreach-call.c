extern void __VERIFIER_error() __attribute__ ((__noreturn__));


extern void *__VERIFIER_nondet_pointer();

struct dummy {
  int a, b;
};

struct cont {
  struct dummy *array;
};

int check(struct cont *pc, int i)
{
  return pc->array[1].b == i;
}

int main()
{
  struct cont cont;
  struct dummy array[10];
  int i, *pa;
  if (i >= 0 && i < 9) {
    cont.array = &array[i];
    pa = &cont.array[0].b;
    if (cont.array[0].b > 0) {
      i =  array[i].b - 10;
      while (i < *pa) {
        ++i;
      }
      if (!check(&cont, i)) {
        goto ERROR;
      }
    }
  }

  return 0;

  ERROR: __VERIFIER_error();
  return 1;
}
