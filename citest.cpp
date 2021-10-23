

int hello(int argc, char* argv[]){
  int result = 0;
#if defined(__x86_64__)
  __asm__ __volatile ("mov %[from], %[to]" : [to]"=r"(result) : [from]"r"(argc));
#endif
  return result;
}
