ARMADILLO_INCLUDE ?= /Users/yangjunjie/work/armadillo-code/include
EIGEN_INCLUDE     ?= /Users/yangjunjie/Downloads/eigen-3.4.0
CXX      ?= g++
CXXFLAGS ?= -Wall -Werror -Wno-sign-compare -Wno-comment -std=c++11 -O2 -I $(ARMADILLO_INCLUDE) -I $(EIGEN_INCLUDE) -DARMA_DONT_USE_WRAPPER -framework Accelerate

# Run a regression test
test: ./bin/main.x
	./bin/main.x ./input/acetaldehyde.dat > ./output/acetaldehyde.out
	diff ./output/acetaldehyde.out ./output/ref/acetaldehyde.out
	./bin/main.x ./input/benzene.dat > ./output/benzene.out
	diff ./output/benzene.out ./output/ref/benzene.out
	./bin/main.x ./input/allene.dat > ./output/allene.out
	diff ./output/allene.out ./output/ref/allene.out

# Compile the main executable
./bin/main.x: ./src/main.cc ./src/molecule.cc
	$(CXX) $(CXXFLAGS) $^ -o $@

# Remove automatically generated files
clean :
	rm -rvf ./bin/* ./output/*.out
