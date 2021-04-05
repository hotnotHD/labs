# main.s
.text
main:
.globl main
 la a0, array_size # Берем ссылку на размер массива
 lw a0, 0(a0) # Запоминаем значение по ссылке
 la a1, array # Адрес первого элемента
 li a6, 3
 
 addi a4, a1, 0 # Адрес первой ячейки массива
 addi a5, a1, 4 # Адрес второй ячейки массива
 
 addi sp, sp, -16 # Выделение памяти в стеке
 sw ra, 12(sp) # Записываем ra (адрес возврата)
 
 call second # Вызываем подпрограмму
 
 lw ra, 12(sp) # Восстанавливаем ra
 addi sp, sp, 16 # Всвобождение памяти в стеке
 
 li a0, 0
 ret
 
 .rodata # read-only data
array_size:
 .word 7
k:
 .word 3
.data # Изменяемые данные
array:
 .word 5, 3, 10, 10, 11, 1, 8