
export ROOTDIR
export TARGETROOT
export TARGETLIST
export CC
export CXX



ROOTDIR    =
TARGETROOT =
TARGETDIR  =


ifneq ($(shell which clang-13),)
	CC = clang-13
	CXX = clang++-13
else ifneq ($(shell which clang-12),)
	CC = clang-12
	CXX = clang++-12
else
	CC = clang
	CXX = clang++
endif

ifneq ($(shell which cygpath.exe),)
	# powershell or cygwin
	ROOTDIR := $(shell cygpath.exe -w $(shell pwd))
else
	ROOTDIR := $(PWD)
endif


TARGETROOT = $(ROOTDIR)/releases


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


arm-pc-fuchsia-gnu:      TARGETDIR := $(TARGETROOT)/arm-pc-fuchsia-gnu
arm-pc-fuchsia-msvc:     TARGETDIR := $(TARGETROOT)/arm-pc-fuchsia-msvc
arm-pc-linux-gnu:        TARGETDIR := $(TARGETROOT)/arm-pc-linux-gnu
arm-pc-linux-msvc:       TARGETDIR := $(TARGETROOT)/arm-pc-linux-msvc
arm-pc-macos-gnu:        TARGETDIR := $(TARGETROOT)/arm-pc-macos-gnu
arm-pc-macos-msvc:       TARGETDIR := $(TARGETROOT)/arm-pc-macos-msvc
arm-pc-windows-gnu:      TARGETDIR := $(TARGETROOT)/arm-pc-windows-gnu
arm-pc-windows-msvc:     TARGETDIR := $(TARGETROOT)/arm-pc-windows-msvc
arm64-pc-fuchsia-gnu:    TARGETDIR := $(TARGETROOT)/arm64-pc-fuchsia-gnu
arm64-pc-fuchsia-msvc:   TARGETDIR := $(TARGETROOT)/arm64-pc-fuchsia-msvc
arm64-pc-linux-gnu:      TARGETDIR := $(TARGETROOT)/arm64-pc-linux-gnu
arm64-pc-linux-msvc:     TARGETDIR := $(TARGETROOT)/arm64-pc-linux-msvc
arm64-pc-macos-gnu:      TARGETDIR := $(TARGETROOT)/arm64-pc-macos-gnu
arm64-pc-macos-msvc:     TARGETDIR := $(TARGETROOT)/arm64-pc-macos-msvc
arm64-pc-windows-gnu:    TARGETDIR := $(TARGETROOT)/arm64-pc-windows-gnu
arm64-pc-windows-msvc:   TARGETDIR := $(TARGETROOT)/arm64-pc-windows-msvc
i386-pc-fuchsia-gnu:     TARGETDIR := $(TARGETROOT)/i386-pc-fuchsia-gnu
i386-pc-fuchsia-msvc:    TARGETDIR := $(TARGETROOT)/i386-pc-fuchsia-msvc
i386-pc-linux-gnu:       TARGETDIR := $(TARGETROOT)/i386-pc-linux-gnu
i386-pc-linux-msvc:      TARGETDIR := $(TARGETROOT)/i386-pc-linux-msvc
i386-pc-macos-gnu:       TARGETDIR := $(TARGETROOT)/i386-pc-macos-gnu
i386-pc-macos-msvc:      TARGETDIR := $(TARGETROOT)/i386-pc-macos-msvc
i386-pc-windows-gnu:     TARGETDIR := $(TARGETROOT)/i386-pc-windows-gnu
i386-pc-windows-msvc:    TARGETDIR := $(TARGETROOT)/i386-pc-windows-msvc
riscv32-pc-fuchsia-gnu:  TARGETDIR := $(TARGETROOT)/riscv32-pc-fuchsia-gnu
riscv32-pc-fuchsia-msvc: TARGETDIR := $(TARGETROOT)/riscv32-pc-fuchsia-msvc
riscv32-pc-linux-gnu:    TARGETDIR := $(TARGETROOT)/riscv32-pc-linux-gnu
riscv32-pc-linux-msvc:   TARGETDIR := $(TARGETROOT)/riscv32-pc-linux-msvc
riscv32-pc-macos-gnu:    TARGETDIR := $(TARGETROOT)/riscv32-pc-macos-gnu
riscv32-pc-macos-msvc:   TARGETDIR := $(TARGETROOT)/riscv32-pc-macos-msvc
riscv32-pc-windows-gnu:  TARGETDIR := $(TARGETROOT)/riscv32-pc-windows-gnu
riscv32-pc-windows-msvc: TARGETDIR := $(TARGETROOT)/riscv32-pc-windows-msvc
riscv64-pc-fuchsia-gnu:  TARGETDIR := $(TARGETROOT)/riscv64-pc-fuchsia-gnu
riscv64-pc-fuchsia-msvc: TARGETDIR := $(TARGETROOT)/riscv64-pc-fuchsia-msvc
riscv64-pc-linux-gnu:    TARGETDIR := $(TARGETROOT)/riscv64-pc-linux-gnu
riscv64-pc-linux-msvc:   TARGETDIR := $(TARGETROOT)/riscv64-pc-linux-msvc
riscv64-pc-macos-gnu:    TARGETDIR := $(TARGETROOT)/riscv64-pc-macos-gnu
riscv64-pc-macos-msvc:   TARGETDIR := $(TARGETROOT)/riscv64-pc-macos-msvc
riscv64-pc-windows-gnu:  TARGETDIR := $(TARGETROOT)/riscv64-pc-windows-gnu
riscv64-pc-windows-msvc: TARGETDIR := $(TARGETROOT)/riscv64-pc-windows-msvc
x86_64-pc-fuchsia-gnu:   TARGETDIR := $(TARGETROOT)/x86_64-pc-fuchsia-gnu
x86_64-pc-fuchsia-msvc:  TARGETDIR := $(TARGETROOT)/x86_64-pc-fuchsia-msvc
x86_64-pc-linux-gnu:     TARGETDIR := $(TARGETROOT)/x86_64-pc-linux-gnu
x86_64-pc-linux-msvc:    TARGETDIR := $(TARGETROOT)/x86_64-pc-linux-msvc
x86_64-pc-macos-gnu:     TARGETDIR := $(TARGETROOT)/x86_64-pc-macos-gnu
x86_64-pc-macos-msvc:    TARGETDIR := $(TARGETROOT)/x86_64-pc-macos-msvc
x86_64-pc-windows-gnu:   TARGETDIR := $(TARGETROOT)/x86_64-pc-windows-gnu
x86_64-pc-windows-msvc:  TARGETDIR := $(TARGETROOT)/x86_64-pc-windows-msvc

.PHONY: all
all: $(TARGETLIST)

.PHONY: lib km um
lib km um:
	$(MAKE) -C $@

$(TARGETLIST):
	# ============================================================ #
	# TARGETDIR: $(TARGETDIR)
	# $@
	# $%
	# $<
	# $?
	# $^
	# $+
	# $|
	# $*
	# ============================================================ #
	mkdir -p $(TARGETROOT)/$@
	$(MAKE) -f Makefile.lib TARGETDIR=$(TARGETROOT)/$@ TARGET=$@

.PHONY: format
format:
	$(MAKE) -f Makefile.lib format

.PHONY: clean
clean:
	rm -rf releases/
