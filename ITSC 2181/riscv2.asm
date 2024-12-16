# Exercise 2
#Shiven Bhardwaj
#ITSC 2181

#Assigning arbitary values to s0(A) ans s1(B)

li s0, 20
li s1, 10

#Checking if A(s0) is less tahn B (s1)_
blt s0, s1, DOUBLE_A #Branch if less than 
#If not less than B, halve B's value 
srai s1, s1, 1 #Shift right arithmatic immdediate by 1
j END #Ending program 

DOUBLE_A:
slli s0, s0, 1# Shift left logical immediate by 1 doubling A

END:




