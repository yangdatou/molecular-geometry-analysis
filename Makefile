ARMADILLO_INCLUDE ?= /Users/yangjunjie/work/armadillo-code/include
EIGEN_INCLUDE     ?= /Users/yangjunjie/Downloads/eigen-3.4.0
CXX      ?= g++
CXXFLAGS ?= -Wall -Werror -Wno-sign-compare -Wno-comment -std=c++11 -O2 -I $(ARMADILLO_INCLUDE) -I $(EIGEN_INCLUDE) -DARMA_DONT_USE_WRAPPER -framework Accelerate

# Run a regression test
test: ./bin/main.x
	./bin/main.x < ./input/acetaldehyde.dat > ./output/acetaldehyde.out
	./bin/main.x < ./input/benzene.dat      > ./output/benzene.out
	./bin/main.x < ./input/allene.dat       > ./output/allene.out

# Compile the main executable
./bin/main.x: ./src/main.cc
	$(CXX) $(CXXFLAGS) ./src/main.cc -o ./bin/main.x

# Remove automatically generated files
clean :
	rm -rvf ./bin/* ./output/* 
