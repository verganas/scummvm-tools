SRC=.

CC      = cc
CXX     = c++
CFLAGS  = -g -O -Wall -Wstrict-prototypes -Wuninitialized -Wno-long-long -Wno-multichar -DSCUMM_BIG_ENDIAN
LDFLAGS :=

TARGETS := descumm3$(EXEEXT) descumm5$(EXEEXT) descumm6$(EXEEXT) extract$(EXEEXT) rescumm$(EXEEXT) simon2mp3$(EXEEXT)

all: $(TARGETS)

descumm3$(EXEEXT) : descumm3.o
	$(CXX) $(LFLAGS) -o $@ $+

descumm5$(EXEEXT) : descumm5.o
	$(CXX) $(LFLAGS) -o $@ $+

descumm6$(EXEEXT) : descumm6.o
	$(CXX) $(LFLAGS) -o $@ $+

extract$(EXEEXT) : extract.o
	$(CC) $(LFLAGS) -o $@ $+

rescumm$(EXEEXT) : rescumm.o
	$(CC) $(LFLAGS) -o $@ $+

simon2mp3$(EXEEXT) : simon2mp3.o
	$(CC) $(LFLAGS) -o $@ $+


clean:
	rm -f *.o $(TARGETS)

.cpp.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $(<) -o $*.o
