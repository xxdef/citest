
#include <iostream>

int main(int argc, char* argv[]){
  int result = 0;
  __asm__ __volatile ("mov %[from], %[to]" : [to]"=r"(result) : [from]"r"(argc));
  return result;
}
