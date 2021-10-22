# make
# make km                              编译TARGETLIST中所有目标格式的km, 生成targets/$(target)/km.o即可,不需要链接
# make um                              编译TARGETLIST中所有目标格式的um, 生成targets/$(target)/um.o即可,不需要链接
# make km -target x86_64-windows-msvc  编译指定目标格式的km, 生成targets/$(target)/km.o即可,不需要链接
# make um -target x86_64-windows-msvc  编译指定目标格式的um, 生成targets/$(target)/um.o即可,不需要链接
# make -target x86_64-windows-msvc     编译指定目标格式的km和um, 生成targets/$(target)/{km & um}.o即可,不需要链接

export CC
export CFLAGS
export CXX
export CXXFLAGS
export LD
export LDFLAGS
export PROJECTROOT
export TARGET
export TARGETDIR
export TARGETSROOT

PROJECTROOT = .

TARGETSROOT = targets

TARGET = $(shell uname -m)-linux-gnu

TARGETDIR = $(TARGETSROOT)/$(TARGET)


CC = clang

CXX = clang++

CFLAGS =
CFLAGS += -ffreestanding
CFLAGS += -fno-cxx-exceptions
CFLAGS += -fno-exceptions
CFLAGS += -fno-rtti
CFLAGS += -fno-unwind-tables
CFLAGS += -ibuiltininc
CFLAGS += -nogpulib
CFLAGS += -nostdlib
CFLAGS += -O3

CXXFLAGS =
CXXFLAGS += -ffreestanding
CXXFLAGS += -fno-cxx-exceptions
CXXFLAGS += -fno-exceptions
CXXFLAGS += -fno-rtti
CXXFLAGS += -fno-unwind-tables
CXXFLAGS += -ibuiltininc
CXXFLAGS += -nogpulib
CXXFLAGS += -nostdlib
CXXFLAGS += -O3
CXXFLAGS += -std=c++17

LDFLAGS =

# See: https://clang.llvm.org/docs/CrossCompilation.html#target-triple
# See: llvm-project/llvm/lib/Support/Triple.cpp
TARGETLIST =
TARGETLIST += arm-pc-fuchsia-gnu:
# TARGETLIST += arm-pc-fuchsia-msvc
TARGETLIST += arm-pc-linux-gnu:
# TARGETLIST += arm-pc-linux-msvc
TARGETLIST += arm-pc-macos-gnu:
# TARGETLIST += arm-pc-macos-msvc
TARGETLIST += arm-pc-windows-gnu:
TARGETLIST += arm-pc-windows-msvc:
TARGETLIST += arm64-pc-fuchsia-gnu:
# TARGETLIST += arm64-pc-fuchsia-msvc
TARGETLIST += arm64-pc-linux-gnu:
# TARGETLIST += arm64-pc-linux-msvc
TARGETLIST += arm64-pc-macos-gnu:
# TARGETLIST += arm64-pc-macos-msvc
TARGETLIST += arm64-pc-windows-gnu:
TARGETLIST += arm64-pc-windows-msvc:
TARGETLIST += i386-pc-fuchsia-gnu:
# TARGETLIST += i386-pc-fuchsia-msvc
TARGETLIST += i386-pc-linux-gnu:
# TARGETLIST += i386-pc-linux-msvc
TARGETLIST += i386-pc-macos-gnu:
# TARGETLIST += i386-pc-macos-msvc
TARGETLIST += i386-pc-windows-gnu:
TARGETLIST += i386-pc-windows-msvc:
TARGETLIST += riscv32-pc-fuchsia-gnu:
# TARGETLIST += riscv32-pc-fuchsia-msvc
TARGETLIST += riscv32-pc-linux-gnu:
# TARGETLIST += riscv32-pc-linux-msvc
TARGETLIST += riscv32-pc-macos-gnu:
# TARGETLIST += riscv32-pc-macos-msvc
TARGETLIST += riscv32-pc-windows-gnu:
TARGETLIST += riscv32-pc-windows-msvc:
TARGETLIST += riscv64-pc-fuchsia-gnu:
# TARGETLIST += riscv64-pc-fuchsia-msvc
TARGETLIST += riscv64-pc-linux-gnu:
# TARGETLIST += riscv64-pc-linux-msvc
TARGETLIST += riscv64-pc-macos-gnu:
# TARGETLIST += riscv64-pc-macos-msvc
TARGETLIST += riscv64-pc-windows-gnu:
TARGETLIST += riscv64-pc-windows-msvc:
TARGETLIST += x86_64-pc-fuchsia-gnu:
# TARGETLIST += x86_64-pc-fuchsia-msvc
TARGETLIST += x86_64-pc-linux-gnu:
# TARGETLIST += x86_64-pc-linux-msvc
TARGETLIST += x86_64-pc-macos-gnu:
# TARGETLIST += x86_64-pc-macos-msvc
TARGETLIST += x86_64-pc-windows-gnu:
TARGETLIST += x86_64-pc-windows-msvc:


VZLIST_C =
VZLIST_C += vz.cxx
VZLIST_O = $(addprefix $(TARGETDIR)/,$(VZLIST_C:.cxx=.o))


KMLIST_C =
KMLIST_C += km.c
KMLIST_O = $(addprefix $(TARGETDIR)/,$(KMLIST_C:.c=.o))


UMLIST_C =
UMLIST_C += um.c
UMLIST_O = $(addprefix $(TARGETDIR)/,$(UMLIST_C:.c=.o))

arm-fuchsia-gnu:      TARGETDIR := $(TARGETSROOT)/arm-fuchsia-gnu
arm-fuchsia-msvc:     TARGETDIR := $(TARGETSROOT)/arm-fuchsia-msvc
arm-linux-gnu:        TARGETDIR := $(TARGETSROOT)/arm-linux-gnu
arm-linux-msvc:       TARGETDIR := $(TARGETSROOT)/arm-linux-msvc
arm-macos-gnu:        TARGETDIR := $(TARGETSROOT)/arm-macos-gnu
arm-macos-msvc:       TARGETDIR := $(TARGETSROOT)/arm-macos-msvc
arm-windows-gnu:      TARGETDIR := $(TARGETSROOT)/arm-windows-gnu
arm-windows-msvc:     TARGETDIR := $(TARGETSROOT)/arm-windows-msvc
arm64-fuchsia-gnu:    TARGETDIR := $(TARGETSROOT)/arm64-fuchsia-gnu
arm64-fuchsia-msvc:   TARGETDIR := $(TARGETSROOT)/arm64-fuchsia-msvc
arm64-linux-gnu:      TARGETDIR := $(TARGETSROOT)/arm64-linux-gnu
arm64-linux-msvc:     TARGETDIR := $(TARGETSROOT)/arm64-linux-msvc
arm64-macos-gnu:      TARGETDIR := $(TARGETSROOT)/arm64-macos-gnu
arm64-macos-msvc:     TARGETDIR := $(TARGETSROOT)/arm64-macos-msvc
arm64-windows-gnu:    TARGETDIR := $(TARGETSROOT)/arm64-windows-gnu
arm64-windows-msvc:   TARGETDIR := $(TARGETSROOT)/arm64-windows-msvc
i386-fuchsia-gnu:     TARGETDIR := $(TARGETSROOT)/i386-fuchsia-gnu
i386-fuchsia-msvc:    TARGETDIR := $(TARGETSROOT)/i386-fuchsia-msvc
i386-linux-gnu:       TARGETDIR := $(TARGETSROOT)/i386-linux-gnu
i386-linux-msvc:      TARGETDIR := $(TARGETSROOT)/i386-linux-msvc
i386-macos-gnu:       TARGETDIR := $(TARGETSROOT)/i386-macos-gnu
i386-macos-msvc:      TARGETDIR := $(TARGETSROOT)/i386-macos-msvc
i386-windows-gnu:     TARGETDIR := $(TARGETSROOT)/i386-windows-gnu
i386-windows-msvc:    TARGETDIR := $(TARGETSROOT)/i386-windows-msvc
riscv32-fuchsia-gnu:  TARGETDIR := $(TARGETSROOT)/riscv32-fuchsia-gnu
riscv32-fuchsia-msvc: TARGETDIR := $(TARGETSROOT)/riscv32-fuchsia-msvc
riscv32-linux-gnu:    TARGETDIR := $(TARGETSROOT)/riscv32-linux-gnu
riscv32-linux-msvc:   TARGETDIR := $(TARGETSROOT)/riscv32-linux-msvc
riscv32-macos-gnu:    TARGETDIR := $(TARGETSROOT)/riscv32-macos-gnu
riscv32-macos-msvc:   TARGETDIR := $(TARGETSROOT)/riscv32-macos-msvc
riscv32-windows-gnu:  TARGETDIR := $(TARGETSROOT)/riscv32-windows-gnu
riscv32-windows-msvc: TARGETDIR := $(TARGETSROOT)/riscv32-windows-msvc
riscv64-fuchsia-gnu:  TARGETDIR := $(TARGETSROOT)/riscv64-fuchsia-gnu
riscv64-fuchsia-msvc: TARGETDIR := $(TARGETSROOT)/riscv64-fuchsia-msvc
riscv64-linux-gnu:    TARGETDIR := $(TARGETSROOT)/riscv64-linux-gnu
riscv64-linux-msvc:   TARGETDIR := $(TARGETSROOT)/riscv64-linux-msvc
riscv64-macos-gnu:    TARGETDIR := $(TARGETSROOT)/riscv64-macos-gnu
riscv64-macos-msvc:   TARGETDIR := $(TARGETSROOT)/riscv64-macos-msvc
riscv64-windows-gnu:  TARGETDIR := $(TARGETSROOT)/riscv64-windows-gnu
riscv64-windows-msvc: TARGETDIR := $(TARGETSROOT)/riscv64-windows-msvc
x86_64-fuchsia-gnu:   TARGETDIR := $(TARGETSROOT)/x86_64-fuchsia-gnu
x86_64-fuchsia-msvc:  TARGETDIR := $(TARGETSROOT)/x86_64-fuchsia-msvc
x86_64-linux-gnu:     TARGETDIR := $(TARGETSROOT)/x86_64-linux-gnu
x86_64-linux-msvc:    TARGETDIR := $(TARGETSROOT)/x86_64-linux-msvc
x86_64-macos-gnu:     TARGETDIR := $(TARGETSROOT)/x86_64-macos-gnu
x86_64-macos-msvc:    TARGETDIR := $(TARGETSROOT)/x86_64-macos-msvc
x86_64-windows-gnu:   TARGETDIR := $(TARGETSROOT)/x86_64-windows-gnu
x86_64-windows-msvc:  TARGETDIR := $(TARGETSROOT)/x86_64-windows-msvc

.PHONY: all
all: $(TARGETLIST)
	# done

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
	@echo $@

.PHONY: format
format:
	echo

.PHONY: clean
clean:
	echo
