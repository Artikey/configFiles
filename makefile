output: main.o
	g++ main.o -o output
main.o: main.cpp
	g++ -c main.cpp
run: output
	./output
clean:
	rm *.o output