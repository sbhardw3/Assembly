#Shiven Bhardwaj
#ITSC 2181
#Dynamic Array Handling and Stack Operations

#Intiliazing array
addi sp, sp, -16

#Adding values to the array
addi t0, zero, 1
sw t0, 0(sp)

addi t0, zero, 2
sw t0, 4(sp)

addi t0, zero, 3
sw t0, 8(sp)

addi t0, zero, 4
sw t0, 12(sp)

addi t0, zero, 0 #intilializing max value zero currently
addi t1, zero, 0 #index for loop 
addi t2, zero, 4 #max value for loop

  
LOOP:
lw t3, 0(sp) #loading value of first element in t3
bge t3, t0, MAX#comparing if current element >= then branch max
addi t1, t1, 1 #incrementing index
addi sp, sp, 4 #iterating space 
addi t2, t2, -1 #decrement the loop value because its set to 4
bnez t2, LOOP #Branch if the loop counter is not zero (for Loop)

MAX:
mv t0, t3 #Updating max value accordingly
addi t1, t1, 1
addi sp, sp, 4
addi t2, t2, -1
bnez t2, LOOP

#restoring the value for later use 
mv a0, t3