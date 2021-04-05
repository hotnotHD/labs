# second.s
.text
second:
.globl second

next_loop: 
 li a2, 1 # iter = 1
 li a3, 0 # bool = 0
 
next_step:
 lw t0, 0(a4) # Запоминаем i-ое значение
 lw t1, 0(a5) # Запоминаем значение i+1
 bgeu t1, t0, no_change # Если i+1 >= i, то не меняем их местами
 sw t0, 0(a5) # Записываем i в ячейку i + 1
 sw t1, 0(a4) # Записываем i+1 в ячейку i
 li a3, 1 # bool = 1

no_change:
 addi a4, a4, 4 # Прибавляем 4 к адресу i, переход к следующей ячейке
 addi a5, a5, 4 # Прибавляем 4 к адресу i+1, переход к следующей ячейке
 addi a2, a2, 1 # iter += 1
 bne a2, a0, next_step # Если iter != array_size, то идем на слудующий шаг

 addi a4, a1, 0 # Сброс в начальное значение
 addi a5, a1, 4 # Сброс в начальное значение
 bnez a3, next_loop # Если bool != 0, то переход к следующей итерации

 slli a6, a6, 2 # полчаем 4k
 add a4, a4, a6 # ищем нужное к-ое число 
 lw a4, 0(a4) # получаем его значение 
 slli a0, a0, 2 # размер массива * 4
 add a1, a1, a0 # адрес первого эл + array_size * 4, получаем адрес ячейки после массива
 sw a4, 0(a1) # записываем в нее ответ
 
loop_exit:
 ret