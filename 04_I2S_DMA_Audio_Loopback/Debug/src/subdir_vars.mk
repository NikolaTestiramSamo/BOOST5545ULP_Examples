################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../src/AIC3204_init.asm \
../src/i2s_register.asm \
../src/vector.asm 

C_SRCS += \
../src/audio.c \
../src/audioLoopbackTest.c \
../src/dma.c \
../src/i2s.c 

C_DEPS += \
./src/audio.d \
./src/audioLoopbackTest.d \
./src/dma.d \
./src/i2s.d 

OBJS += \
./src/AIC3204_init.obj \
./src/audio.obj \
./src/audioLoopbackTest.obj \
./src/dma.obj \
./src/i2s.obj \
./src/i2s_register.obj \
./src/vector.obj 

ASM_DEPS += \
./src/AIC3204_init.d \
./src/i2s_register.d \
./src/vector.d 

OBJS__QUOTED += \
"src\AIC3204_init.obj" \
"src\audio.obj" \
"src\audioLoopbackTest.obj" \
"src\dma.obj" \
"src\i2s.obj" \
"src\i2s_register.obj" \
"src\vector.obj" 

C_DEPS__QUOTED += \
"src\audio.d" \
"src\audioLoopbackTest.d" \
"src\dma.d" \
"src\i2s.d" 

ASM_DEPS__QUOTED += \
"src\AIC3204_init.d" \
"src\i2s_register.d" \
"src\vector.d" 

ASM_SRCS__QUOTED += \
"../src/AIC3204_init.asm" \
"../src/i2s_register.asm" \
"../src/vector.asm" 

C_SRCS__QUOTED += \
"../src/audio.c" \
"../src/audioLoopbackTest.c" \
"../src/dma.c" \
"../src/i2s.c" 


