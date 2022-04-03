# Makefile for lab00, Wesley Chiba, CS32, S22

CXX = clang++
# CXX = g++

helloWorld: helloWorld.o
		${CXX} helloWorld.o -o helloWorld

helloWorld.o: helloWorld.cpp
		${CXX} -c helloWorld.cpp

clean:
		/bin/rm -f *.o helloWorld lab00Test

lab00Test: lab00Test.o tddFuncs.o arrayFuncs.o
		${CXX} lab00Test.o tddFuncs.o arrayFuncs.o -o lab00Test

tddFuncs.o: tddFuncs.cpp
		${CXX} -c tddFuncs.cpp	
		
lab00Test.o: lab00Test.cpp
		${CXX} -c lab00Test.cpp	

arrayFuncs.o: arrayFuncs.cpp
		${CXX} -c arrayFuncs.cpp

default:
	./lab00Test

