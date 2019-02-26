# Fizz Buzz challenge

The goal is to replace any number divisible by x with the work `Fizz`, `Buzz` 
or `FizzBuzz` passing the size of the list as argument.

The rules are:

- Divisible by 3 became `Fizz`
- Divisible by 5 became `Buzz`
- Divisible by 3 and 5 became `FizzBuzz`

**Example**

Given the input:

```
17
```

The expected output will be:

```
[1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, "FizzBuzz", "Fizz", 17]
```

*Note: dosn't matter the output type, as long the behaviour is correct*

**Error cases**

All the invalid inputs should return an error.

The possible invalid inputs are:

- Non integer values
- Any integer below 1
