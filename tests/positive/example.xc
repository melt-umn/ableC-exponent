#include <stdio.h>

int main (int argc, char **argv) {
  int test1 = (2 ** 2 ** 2) ** 2;
  double test2 = 1.01 ** test1;
  float test3 = 10.0f ** -3;
  
  printf("%d\n%f\n%f\n", test1, test2, test3);

  if (test1 != 256)
    return 1;
  else if (test2 + 0.000001 < 12.772376 || test2 - 0.000001 > 12.772376)
    return 2;
  else if (test3 != 0.001f)
    return 3;
  
  return 0; 
}
