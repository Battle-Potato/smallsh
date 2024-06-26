CC=gcc -g --std=gnu99 -Wall
exe=smallsh

$(exe): smallsh.c cd.o status.o exit.o smallsh.h
	$(CC) cd.o status.o exit.o smallsh.c -o $(exe)

exit.o: exit.c exit.h
	$(CC) -c exit.c

cd.o: cd.c cd.h
	$(CC) -c cd.c

status.o: status.c status.h
	$(CC) -c status.c
	
clean: 
	rm -f *.o $(exe)

empty:
	r -f *.in *.out *.o $(exe)
