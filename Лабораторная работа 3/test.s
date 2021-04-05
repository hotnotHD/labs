# test.s
.text
start:
.globl start
 call main # Вызываем  main
finish:
 li a0, 10 # x10 = 10
 ecall # Если значение x10 == 10, то ecall вызывает останов