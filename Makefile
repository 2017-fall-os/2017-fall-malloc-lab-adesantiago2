CFLAGS	= -g
CC	= gcc
OBJ	= myAllocatorTest1 test1 nextFit

all: $(OBJ)

myAllocatorTest1: myAllocator.o myAllocatorTest1.o
	$(CC) $(CFLAGS) -o $@ $^

test1: myAllocator.o malloc.o test1.o
	$(CC) $(CFLAGS) -o $@ $^
	
nextFit: myAllocator.o malloc.o nextFit.o
	$(CC) $(CFLAGS) -o $@ $^
clean:
	rm -f *.o $(OBJ) 

