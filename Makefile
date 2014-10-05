

TOP := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

PREFIX ?= target
BUILD ?= build

PREFIX_ABS := $(abspath $(PREFIX))

SRC := $(TOP)/src
CONFIG_FLAGS =  --prefix=$(PREFIX_ABS) --target=arm-none-eabi --enable-interwork --enable-multilib

CONFIG_OUTPUT = Makefile
CONFIG_SCRIPT = configure
BOOTSTRAP_SCRIPT = bootstrap
BUILD_TARGET = all
INSTALL_TARGET = install

all: binutils gcc gdb openocd

$(BUILD)/%:
	mkdir -vp $@

$(SRC)/%/$(CONFIG_SCRIPT):
	cd $(SRC)/$*; \
	export PATH="$(PREFIX_ABS)/bin:$$PATH"; \
	./$(BOOTSTRAP_SCRIPT)

configure/%:  $(BUILD)/% $(SRC)/% $(SRC)/%/$(CONFIG_SCRIPT)
	@if [ ! -f $(BUILD)/$*/$(CONFIG_OUTPUT) ]; then \
	  echo -e "\n\n#########################\n### Configuring target $*..\n#########################"; \
	  cd $(BUILD)/$*; \
    export PATH="$(PREFIX_ABS)/bin:$$PATH"; \
	  $(SRC)/$*/$(CONFIG_SCRIPT) $(CONFIG_FLAGS); \
	fi

make/%: configure/% 
	@echo "\n\n#########################\n### Building target $*..\n#########################"
	@export PATH="$(PREFIX_ABS)/bin:$$PATH"; $(MAKE) -C $(BUILD)/$* $(BUILD_TARGET)

install/%: make/%
	@echo "\n\n#########################\n### Installing target $*..\n#########################"
	@export PATH="$(PREFIX_ABS)/bin:$$PATH"; $(MAKE) -C $(BUILD)/$* $(INSTALL_TARGET)

# target specific variable overrides
install/gcc-initial: BUILD_TARGET = all-gcc 
install/gcc-initial: INSTALL_TARGET = install-gcc
make/gcc: CONFIG_FLAGS += --enable-languages="c,c++" --with-newlib --with-headers=$(TOP)/src/newlib/newlib/libc/include/ --enable-ld=yes \
 --with-host-libstdcxx='-static-libgcc -Wl,-Bstatic,-lstdc++,-Bdynamic -lm'  --with-gnu-as --with-gnu-ld \
 --disable-decimal-float --disable-libffi --disable-libgomp --disable-libmudflap --disable-libquadmath --disable-zlib \
 --disable-libssp --disable-libstdcxx-pch --disable-nls --disable-shared --disable-threads --disable-tls
make/openocd: CONFIG_FLAGS += --enable-maintainer-mode --enable-stlink --enable-ti-icdi

# same as gcc 
install/gcc-initial: install/gcc ;

binutils: install/binutils ;

gcc-initial: binutils install/gcc-initial ;

gcc: binutils newlib install/gcc ;

newlib: binutils gcc-initial install/newlib ;

gdb: install/gdb ;

openocd: install/openocd ;
