# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Landon Romero and Evan Walther

## Summary
In this lab, we learned how D latches store data and how sequential circuits differ from combinational circuits. we created a single-bit latch and a four-byte memory system using latches, multiplexers, and demultiplexers. we also learned how an enable signal controls when data is stored and how an address selects which memory location to read or write.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural Verilog has unintended behavior, when we want memory and the ability to store things we need to use behavioral syntax. Structural verilog cannot safely map structural logic into predictable hardware cells

### What is the meaning of always @(*) in a sensitivity block?
The * symbol just means include all input signals, it is a wildcard so you don't have to include everything inside the ( ) block. It includes all the signals and read inside the block into the sensitivity block.

### What importance is memory to digital circuits?
Memory is a vital piece to digital circuits and eventually to computers entirely, they are the backbone to complicated logic. If everything is sequential then in order to do anything complex you must do all the steps in proper order, with memory you don't have to continually switch on and off multiple times. Memory allows us to store certain bytes of memory to be retrieved for future use.
