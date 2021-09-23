# Project Checkpoint 1
 - Author: guohao wu (gw79)
 - Date: 09/22/2021
 - Course: ECE 550, Duke University, Durham, NC
 - Term: 2021 fall
 - Professor Rabih Younes

### Design Description

**ADD AND SUBTRACT**
<br>Our project used full_adder to build four_bit_RCA, and four_bit_RCA to build eight_bit_RCA, and eight_bit_RCA to build sixteen_bit_RCA, and sixteen_bit_RCA to build thirty_two_CSA. And finally I used thirty_two_bit_CSA to build ALU with function of add and subtract.to design and simulate an ALU. With non-RCA adder and a 50 MHz clock.

**IsNotEqual**
<br>The IsNotEqual is just use the result of subtraction. If at least one bit of result of subtraction is 1, it should be uneuqal.

**IsLessThan**
<br>The IsLessThan utilize the result of subtraction and overflow bit. If there is no overflow, a negative subtraction result means "LESS THAN". If there is overflow, A and -B has same sign, and A and B has different sign. To make it A < B, A should be a positive number. That means the result of subtration is positive. So the expression could be simplfy to overflow bit xor significant bit of result.

**SLL**
<br>The design is based on the slides.

**SRA**
<br>The design is based on the slides.