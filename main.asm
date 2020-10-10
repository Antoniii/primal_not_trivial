	;
SECTION .data							
	hello_add :	DB '3 + 2 = ', 10		; Hello world!’ плюс символ возврата каретки
	helloLen : EQU $-hello_add			; Длина строки ’3 + 2 = ’

SECTION .text							; Начало секции кода
	GLOBAL _start						; Метка _start должна быть глобальной,
										; чтобы линкер смог её найти и сделать
										; точкой входа в программу.

_start:									
	mov eax , 4							; Системный вызов для записи (sys_write)
	mov ebx , 1							; Описатель файла 1 - стандартный вывод
	mov ecx , hello_add					; Адрес строки hello в ecx
	mov edx , helloLen 					; helloLen - константа, а не переменная

	int 80h 							; Вызов ядра

	mov eax , 1 						; Системный вызов для выхода (sys_exit)
	mov ebx , 0 						; Выход с кодом возврата 0 (без ошибок)
	int 80h 							; Вызов ядра