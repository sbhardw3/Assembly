#Shiven Bhardwaj
#ITSC 2181
#Dynamic Array Handling and Stack Operations


#Allocationg space for 5 integers on the stack
addi sp, sp, -20

#Intiliazing values to the stack
addi t0, zero, 10
sw t0, 0(sp)

addi t0, zero, 20
sw t0, 4(sp)

addi t0, zero, 30
sw t0, 8(sp)

addi t0, zero, 5
sw t0, 12(sp)

addi t0, zero, 15
sw t0, 16(sp)

addi t0, zero, 0 #index for the loop
addi t1, zero, 0 #initliazing sum before the loop
addi t3, zero, 5


LOOP:
lw t2, 0(sp) #Loading firsst  array element value
add t1, t1, t2 #adding the value of element array to t1(which is zero)
addi sp, sp, 4 #moving to the next element 
addi t0, t0, 1 #incrementing index
blt t0, t3, LOOP #if value here for 5 elemetns 


#storing sum in register for later use 
mv a0, t1

addi sp, sp, 20 #Restoring the position of the stack pointer to original position



