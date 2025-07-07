# Set the minimum required version of CMake
cmake_minimum_required(VERSION 3.14)

# Set the project name
project(zuno-starter VERSION 0.1.0)


# Include the dependencies file
include(cmake/dependencies.cmake)

# Set the C++ standard to C++20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add the executable target
add_executable(zuno-app src/main.cpp)

# Link the Zuno library to the executable
target_link_libraries(zuno-app zuno)