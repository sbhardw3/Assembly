#Shiven Bhardwaj
#ITSC 2181
#SPR 2024

#########Task-1#########

#Initiliazing global array with values 
.data 
globalArray: .word 10, 20, 30

.text
la s0, globalArray #loading the memory address of the array
addi t0, zero, 50 #storing the number in a register
sw t0, 4(s0) #storing the number in the second element of the array

#ending the program gracefully
ecall




