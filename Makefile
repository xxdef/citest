
export ROOTDIR
export TARGETLIST


ROOTDIR    =


ifneq ($(shell which cygpath.exe),)
	# powershell or cygwin
	ROOTDIR := $(shell cygpath.exe -w $(shell pwd))
else
	ROOTDIR := $(PWD)
endif


# See: https://clang.llvm.org/docs/CrossCompilation.html#target-triple
# See: llvm-project/llvm/lib/Support/Triple.cpp
TARGETLIST =
# TARGETLIST += arm-pc-fuchsia-gnu
# TARGETLIST += arm-pc-fuchsia-msvc
TARGETLIST += arm-pc-linux-gnu
# TARGETLIST += arm-pc-linux-msvc
TARGETLIST += arm-pc-macos-gnu
# TARGETLIST += arm-pc-macos-msvc
TARGETLIST += arm-pc-windows-gnu
TARGETLIST += arm-pc-windows-msvc
# TARGETLIST += arm64-pc-fuchsia-gnu
# TARGETLIST += arm64-pc-fuchsia-msvc
TARGETLIST += arm64-pc-linux-gnu
# TARGETLIST += arm64-pc-linux-msvc
TARGETLIST += arm64-pc-macos-gnu
# TARGETLIST += arm64-pc-macos-msvc
TARGETLIST += arm64-pc-windows-gnu
TARGETLIST += arm64-pc-windows-msvc
# TARGETLIST += i386-pc-fuchsia-gnu
# TARGETLIST += i386-pc-fuchsia-msvc
TARGETLIST += i386-pc-linux-gnu
# TARGETLIST += i386-pc-linux-msvc
TARGETLIST += i386-pc-macos-gnu
# TARGETLIST += i386-pc-macos-msvc
TARGETLIST += i386-pc-windows-gnu
TARGETLIST += i386-pc-windows-msvc
# TARGETLIST += riscv32-pc-fuchsia-gnu
# TARGETLIST += riscv32-pc-fuchsia-msvc
TARGETLIST += riscv32-pc-linux-gnu
# TARGETLIST += riscv32-pc-linux-msvc
TARGETLIST += riscv32-pc-macos-gnu
# TARGETLIST += riscv32-pc-macos-msvc
# TARGETLIST += riscv32-pc-windows-gnu
# TARGETLIST += riscv32-pc-windows-msvc
# TARGETLIST += riscv64-pc-fuchsia-gnu
# TARGETLIST += riscv64-pc-fuchsia-msvc
TARGETLIST += riscv64-pc-linux-gnu
# TARGETLIST += riscv64-pc-linux-msvc
TARGETLIST += riscv64-pc-macos-gnu
# TARGETLIST += riscv64-pc-macos-msvc
# TARGETLIST += riscv64-pc-windows-gnu
# TARGETLIST += riscv64-pc-windows-msvc
# TARGETLIST += x86_64-pc-fuchsia-gnu
# TARGETLIST += x86_64-pc-fuchsia-msvc
TARGETLIST += x86_64-pc-linux-gnu
# TARGETLIST += x86_64-pc-linux-msvc
TARGETLIST += x86_64-pc-macos-gnu
# TARGETLIST += x86_64-pc-macos-msvc
TARGETLIST += x86_64-pc-windows-gnu
TARGETLIST += x86_64-pc-windows-msvc


.PHONY: all
all: $(TARGETLIST)

.PHONY: lib km um
lib km um:
	$(MAKE) -C $@

$(TARGETLIST):
	# ============================================================ #
	# $@
	# $%
	# $<
	# $?
	# $^
	# $+
	# $|
	# $*
	# ============================================================ #
	mkdir -p obj.$@
	mkdir -p lib.$@
	$(MAKE) -f Makefile.lib TARGETDIR=obj.$@ TARGET=$@

.PHONY: format
format:
	$(MAKE) -f Makefile.lib format

.PHONY: dist
dist:
	tar cf libxx.tar lib.* include/

.PHONY: clean
clean:
	rm -rf libxx.tar
	rm -rf $(addprefix obj., $(TARGETLIST))
	rm -rf $(addprefix lib., $(TARGETLIST))
