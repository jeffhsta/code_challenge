# Clock angle challenge

The goal is to find be shortest angle between the hands for the clock.

The program will receive two integers, which represents the hour and minute
respectively.

*Treat hour 0 the same as hour 12*

**Example**

Given the input:

```
12, 30
```

The expected output will be:

```
180
```

**Error cases**

All the invalid inputs should return an error.

The possible invalid inputs are:

- Non integer values for bolth arguments
- Any integer below 0 for bolth arguments
- Any integer above 12 for argument `hour`
- Any integer above 59 for argument `minute`

**Source**

[https://nrich.maths.org/12835](https://nrich.maths.org/12835)
