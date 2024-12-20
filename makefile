# Compiler and linker
CXX = g++
CXXFLAGS = -Wall -std=c++11

# Output executable names
SIMULATOR_TARGET = baby_simulator
ASSEMBLER_TARGET = assembler_program

# Source files for each program
SIMULATOR_SRCS = simulator.cpp 
ASSEMBLER_SRCS = assembler.cpp 

# Object files for each program
SIMULATOR_OBJS = $(SIMULATOR_SRCS:.cpp=.o)
ASSEMBLER_OBJS = $(ASSEMBLER_SRCS:.cpp=.o)

# Header files
HEADERS = simulator.h assembler.h 

# Default target: build both the simulator and assembler
all: $(SIMULATOR_TARGET) $(ASSEMBLER_TARGET)
	$(RM) $(SIMULATOR_OBJS) $(ASSEMBLER_OBJS)

# Rule to build the simulator
$(SIMULATOR_TARGET): $(SIMULATOR_OBJS)
	$(CXX) $(SIMULATOR_OBJS) -o $(SIMULATOR_TARGET)

# Rule to build the assembler
$(ASSEMBLER_TARGET): $(ASSEMBLER_OBJS)
	$(CXX) $(ASSEMBLER_OBJS) -o $(ASSEMBLER_TARGET)

# Rule to compile C++ source files into object files
%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up compiled files
clean:
	rm -f $(SIMULATOR_OBJS) $(ASSEMBLER_OBJS) $(SIMULATOR_TARGET) $(ASSEMBLER_TARGET)

# Rebuild everything from scratch
rebuild: clean all
