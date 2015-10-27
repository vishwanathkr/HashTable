#***********************************************************************************
#  Created by Vishwanath K R on Mar 20, 2014.
#  This driver implements the makefile for the HashTable Implementarion
#***********************************************************************************

CC = g++ -std=c++11
CFLAGS = -c -Wall

op: LL.o HT.o main.o
	$(CC) LL.o HT.o main.o -o op

main.o: main.cpp HashTable.h
	$(CC) $(CFLAGS) main.cpp

HT.o: HashTable.cpp HashTable.h
	$(CC) $(CFLAGS) -o HT.o HashTable.cpp

HashTable.h: LinkedList.h

LL.o: LinkedList.cpp LinkedList.h
	$(CC) $(CFLAGS) -o LL.o LinkedList.cpp

clean:
	rm -f *.o core