# Spiral Matrix challenge

The goal is to receive a number of columns and lines and generate a matrix based in the numbers,
this matrix should have a sequence clock wise starting from 1.


**Example**

Given the input:

```
4, 5
```

The expected output will be:

```
[
  [1,   2,  3, 4],
  [14, 15, 16, 5],
  [13, 20, 17, 6],
  [12, 19, 18, 7],
  [11, 10,  9, 8]
]
```

**Error cases**

All the invalid inputs should return an error.

The possible invalid inputs are:

- Non integer values
- Any integer below 1

**Source**

[https://www.geeksforgeeks.org/print-a-given-matrix-in-spiral-form/](https://www.geeksforgeeks.org/print-a-given-matrix-in-spiral-form/)
