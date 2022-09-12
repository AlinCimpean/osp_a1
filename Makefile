.default: all

all: simulation

clean:
	rm -f simulation *.o

prodcon: problemA.c
	rm -f simulation *.o
	gcc -Wall -pedantic -pthread -o simulation $^ -DPRODCON

barber: problemD.c
	rm -f simulation *.o
	gcc -Wall -pedantic -pthread -o simulation $^ -DBARBER

%.o: %.c
	gcc -Wall -pedantic -pthread -o$^