all: obj/main.o
	c++ obj/main.o -o bin/breakout -L/usr/local/lib -L/usr/X11R6/lib -lGLEW -lglfw -lGL -lX11 -lpthread -lXrandr -lXi

obj/main.o: src/main.cpp
	c++ -c src/main.cpp -o obj/main.o -I/usr/local/include -I/usr/X11R6/include

clean:
	rm obj/*.o bin/breakout
