SET(AVR_COMMON_COMPILE_FLAGS "-mmcu=atmega32u4 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -Wextra -MD -MP -MF")
#SET(AVR_LIBS 	${AVR_LIBS}/crtatmega32u4.o)

SET(CMAKE_C_FLAGS_DEBUG "${COMMON_FLAGS} -ffreestanding -DDEBUG" CACHE INTERNAL "c compiler flags debug")
SET(CMAKE_CXX_FLAGS_DEBUG "${COMMON_FLAGS} -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -DDEBUG" CACHE INTERNAL "cxx compiler flags debug")
SET(CMAKE_ASM_FLAGS_DEBUG "-g3" CACHE INTERNAL "asm compiler flags debug")

SET(CMAKE_C_FLAGS_RELEASE "${COMMON_FLAGS} " CACHE INTERNAL "c compiler flags release")
SET(CMAKE_CXX_FLAGS_RELEASE "${COMMON_FLAGS} -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics" CACHE INTERNAL "cxx compiler flags release")
SET(CMAKE_ASM_FLAGS_RELEASE "-g3" CACHE INTERNAL "asm compiler flags release")

add_definitions(-D__ATmega32U4__)

#string(APPEND CMAKE_CXX_FLAGS "-fno-use-cxa-atexit -fno-exceptions	-fno-rtti -g2")
string(APPEND CMAKE_C_FLAGS "-g2 ")
string(APPEND CMAKE_CXX_FLAGS_DEBUG " -Og")
string(APPEND CMAKE_C_FLAGS_DEBUG " -Og")
string(APPEND CMAKE_CXX_FLAGS_RELEASE " -Os")
string(APPEND CMAKE_C_FLAGS_RELEASE " -Os")