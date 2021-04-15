
#PICO requires a minimum version
cmake_minimum_required(VERSION 3.13)

#include this additional cmake file in our build
include(pico_sdk_import.cmake)

	#name our project (blank) and read in
	#the environment variables for the compilers
	project(blank C CXX ASM)

	# set C standard rules
	set(CMAKE_C_STANDARD 11)

	# set C++ standard rules
	set(CMAKE_CXX_STANDARD 17)

	#this cmake instruction sets up our SDK 
	#for use.  
	pico_sdk_init()

	#this is the important one.
	#adds our C file to the project (possibly others, too.)
	add_executable(blank blank.c)

	#This adds in the rules for compiling to 
	#and ELF and on compiling the elf2uf2 app.
	# along with creating the UF2 for our PICO
	pico_add_extra_outputs(blank)

	#this adds in the libraries needed and they
	#line up the header includes above.
	#There is no "pico/stdlib.h" in the SDK, but
	#adding the library sets it up to be used from the 
	#include above.
	target_link_libraries(blank pico_stdlib)
