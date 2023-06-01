# Functions and Errors 

This solidity program helps us to understand the three functions **revert()** , **require()** and **assert()** . These three functions are used to prevent errors in our program and helps us to give warnings about the code .

## Revert()

This function is used to revert the ongoing process when a certain condition is met so that we can save the remaining gas and not letting getting it waste on unwanted operations . It takes two parameters , a condition and a string or message(optional).

## Require()

This functions is used to require a condition to be met before proceeding with a process and if the condition is not met, It will not execute the ongoing process . It lso requires two parameters a condition and a string message .

## Assert()

It asserts a condition before a process is started and if the condition is not met the process with not start .