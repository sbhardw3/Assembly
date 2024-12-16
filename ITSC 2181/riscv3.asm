#Exercise #
#Shiven Bhardwaj
#ITSC 2181

#Assigning different integer Values to a0, a1, a2
li a0, 1 
li a1, 5
li a2, 9

blt a0, a1, ELSE_a0 #Comparing a0 to a1 branching if s0 less than a1

#If a0 is greater than a1, compare a2 to 10
li t0, 10 #assigning value to t0 to compare

blt a2, t0, MINUS_5 #branching to minus_5 if less than 10
addi a0, a0, 5 #adding 5 to a0 
j END;

MINUS_5:
addi a0, a0, -5 #SUBSTRACTING 5 FROM A0

ELSE_a0:
srl a1, a1,1 #if a0 is else than or equal to a1, performing a logical
             # right shift on a1 by 1 position

END: #End of program  and storing the values
sw a0
sw a1
sw a2 
