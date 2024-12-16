#Shiven Bhardwaj
#ITSC 2181
#SPR 2024

#########Task-3#########

#Iniliazing global array
.data

globalData: .word 40, 30, 20, 10, 50

.text
addi s0, zero, 0 #used for i
addi s1, zero, 5 #used for i < 5, 5 here 

la t1, globalData #loading the memory address of first element of the array
lw t2, 0(t1) #loading the data of the first element of array

#looping through the array
LOOP:
blt s0, s1, LOOP_BODY # checking i < 5
j END #jumping to end if upper statment if false

#Loop body 
LOOP_BODY:
slli t3, s0, 2 #incrementing the i by 4 and storing it in t3
add t3, t3, t1 #adding t4 with memory address of array place at first element i.e., globalNumber[0] address

lw t4, 0(t3) #loading first element of the array 

blt t4, t2, MIN # intiliazing the if body and checking the minimum number in the array
j LOOP_CONTINUE #continuing the loop

MIN:
mv t2, t4 #looping the lowest number in t2
j LOOP #jumping to loop again to check the full loop

LOOP_CONTINUE:
addi s0, s0, 1 #incrementing the loop
j LOOP #jumping to loop again

END:
ecall #ending the program gracefully 






