const fizzbuzz = require( '.' );

describe('FizzBuzz', () => {
  it('return a list with one element', () => {
    expect(fizzbuzz(1)).toEqual([1]);
  });

  it('return a list with 3 replaced by "Fizz"', () => {
    expect(fizzbuzz(3)).toEqual([1, 2, 'Fizz']);
  });

  it('return a list with 5 replaced by "Buzz"', () => {
    expect(fizzbuzz(5)).toEqual([1, 2, 'Fizz', 4, 'Buzz']);
  });

  it('return a list with 15 replaced by "FizzBuzz"', () => {
    const exptedResult = [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz'];
    expect(fizzbuzz(15)).toEqual(exptedResult);
  });
});
