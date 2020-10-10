name = main
build:
	nasm -f elf64 $(name).asm
	ld -o $(name) $(name).o
#clean:
	rm -f *.o

	echo "\n"
	./$(name)
# здесь могут быть дополнительные команды