#Shiven Bhardwaj
#ITSC 2181
#SPR 2024

#########Task-2#########

.data
globalNumbers: .word 5, 15, 25, 35

.text
addi s0, zero, 0 #used for i
addi t0, zero, 4 #used for i < 4, 4 in the register
addi t1, zero, 0 # used for sum
la s1, globalNumbers

LOOP: 
blt s0, t0, LOOP_BODY # if statement i < 4 then jumping to loop body
j END # jumping to end of the program if upper statement false

LOOP_BODY:
slli t4, s0, 2 #incrementing the i by 4 and storing it in t4
add t4, t4, s1#adding t4 with memory address of array place at first element i.e., globalNumber[0] address
lw s2, 0(t4) #loading every word placed in the array
add t1, t1, s2 #adding each word of the array and storing it in t1
addi s0, s0, 1 #incrementing i by 1 for loop to function
j LOOP

#end of the program 
END:
ecall



