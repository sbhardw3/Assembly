## Exercise !

#Predefined Values

li t0, 15
li t1, 30

#Checkingif t0 if equal to t1

beq t0, t1, left_shift #Branch to left_shift if equal
bne t0, t1, right_shift #Branch to  right_shift if not equal 

left_shift:
slli t2, t0, 2
j END

right_shift:
srli t3, t1, 2

END:


	