

int hello(int argc, char* argv[]){
  int result = 0;
#if defined(LIBVCPU_ARCH_X86_64)
  __asm__ __volatile ("mov %[from], %[to]" : [to]"=r"(result) : [from]"r"(argc));
#endif
  return result;
}
