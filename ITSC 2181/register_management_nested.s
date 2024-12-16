#Shiven Bhardwaj
#ITSC 2181
#SPR 24

#main function
MAIN: 
addi s0, zero, 5 #intializing variables num1
addi t0, zero, 3#num2

#passing arguments to process value function s0 register as the first 
#parameter and t0 register as the second
add a0, zero, s0
add a1, zero, t0
jal PROCESSVALUE 

#putting value of process value in register t1 then  returning that value
add t1, zero, a0
add a0, zero, t1

#processValue function
PROCESSVALUE:
#calling the function increment multiply
jal INCREMENTANDMULTIPLY
#saving value of increment multiply function in t1 register 
add t1, zero, a0

add a0, zero, t1#passing value of t1 in the first paramenter of increment multiply function
jal INCREMENTANDMULTIPLY

#storing value of increment multiply function in t2
add t2, zero, a0
add a0, zero, t1 #retuning value of t2 register 

jr ra #jumping register

#increment function
INCREMENTANDMULTIPLY:
addi s0, a0, 1 #adding 1 to thefirst parameter of the function storing value in s0 register
addi t0, a1, 1 #same as above storing value in t0

mul a0, s0, t0 #returning the mupltipication result of s0 and t0
jr ra #jumping register 


