# $@ name of the target
# $^ name of all prerequisites with duplicates removed
# $< name of the first prerequisite
dist		= dist
source	= src
FPC     = fpc
FPCFLAGS  = -S2 -Tlinux -O1 -l
OUTPUT	= -FE$(dist)
UNITS		= -Fu$(source)/units
EXE			= hello

all: compile 

compile: main.dpr
	$(FPC) $(FPCFLAGS) $(source)/$< $(OUTPUT) $(UNITS) -o$(EXE)

dist:
	mkdir $@

build: dist compile clean

.PHONY: clean cleanest

clean:
	rm $(dist)/*.o $(dist)/*.ppu

cleanest: clean
	rm $(dist)/$(EXE)