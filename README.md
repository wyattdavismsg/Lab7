# Number Theory: Subtraction
In this lab you've learned the basics of number theory as it relates to subtraction.
## Rubric
| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |


## Names
Wyatt Davis, Boston Holdaway
## Summary
In this lab, we learned how to implement subtraction using logic gates, and how to implement one’s and two’s complements representations. We were also able to subtract numbers in one’s complement form. We also learned for the first time how to use a loop in Verilog, as well as a range of inputs for one variable.
## Lab Questions


### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The only difference between the two is in half sub’s “borrow’ and adder’s “carry”, in which borrow has notAandB, and carry has AandB
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around carry requires you to use the second row of full adders to distribute the carry. This creates extra work that does not need to be done with the twos compliment as the extra 1 can just be ignored and dropped from the final product. 
### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case is where when you try to use two’s complement on a number at the highest end of the bit size, you would have to exceed the bit size available to represent that number. This means that you cannot represent all numbers within that bit size as a two’s complement number, and you cannot subtract that number without having a larger bit size.
