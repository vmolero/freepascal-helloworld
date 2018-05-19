# $@ name of the target
# $^ name of all prerequisites with duplicates removed
# $< name of the first prerequisite
dist		= dist
source	= src
FPC     = fpc
FPCFLAGS  = -Tlinux -O1 -l
OUTPUT	= -FE$(dist)
UNITS		= -Fu$(source)/units

all: build clean

hello: main.dpr
	$(FPC) -S2 $(FPCFLAGS) $(source)/$< $(OUTPUT) $(UNITS) -o$@

dist:
	mkdir $@

build: dist hello

.PHONY: clean cleanest

clean:
	rm $(dist)/*.o $(dist)/*.ppu

cleanest: clean
	rm $(dist)/hello