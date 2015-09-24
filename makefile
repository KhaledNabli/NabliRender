OBJ = main.o vect.o ray.o bitmap.o camera.o material.o color.o light.o object.o sphere.o plane.o polygon.o scene.o kernel.o
FLAGS = -std=c++11 -Ofast
INC = -I "./"



NabliRender: $(OBJ)
	g++ $(OBJ) -o build/NabliRender.exe
	rm -f $(OBJ)

main.o:
	g++ -c src/main.cpp $(FLAGS) $(INC)

vect.o:
	g++ -c src/vect.cpp $(FLAGS) $(INC)
ray.o:
	g++ -c src/ray.cpp $(FLAGS) $(INC)

bitmap.o:	
	g++ -c src/bitmap.cpp $(FLAGS) $(INC)

camera.o:	
	g++ -c src/camera.cpp $(FLAGS) $(INC)

color.o:	
	g++ -c src/color.cpp $(FLAGS) $(INC)

material.o:	
	g++ -c src/material.cpp $(FLAGS) $(INC)

light.o:
	g++ -c src/light.cpp $(FLAGS) $(INC)

plane.o:
	g++ -c src/plane.cpp $(FLAGS) $(INC)

sphere.o:
	g++ -c src/sphere.cpp $(FLAGS) $(INC)

object.o:
	g++ -c src/object.cpp $(FLAGS) $(INC)

polygon.o:
	g++ -c src/polygon.cpp $(FLAGS) $(INC)

scene.o:
	g++ -c src/scene.cpp $(FLAGS) $(INC)

kernel.o:
	g++ -c src/kernel.cpp $(FLAGS) $(INC)

clean:
	rm -f $(OBJ)