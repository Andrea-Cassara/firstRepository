# The objective of this file is to make compilation of main.cpp faster and more customizable

# Relevant variables
OUTPUTDIR = .

# Use g++ and give instructions
CXX = g++
TARGET = exe
SRC = main.cpp

CXXFLAGS = -g -Wall -std=c++23

# How to generate an executable from the prevoius settings
$(TARGET):
	$(CXX) $(CXXFLAGS) -o $(OUTPUTDIR)/$(TARGET) $(SRC)


