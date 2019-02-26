defmodule FizzbuzzTest do
  use ExUnit.Case

  describe "Fizzbuzz.run/1" do
    test "return a list with one elememnt" do
      assert Fizzbuzz.run(1) == {:ok, [1]}
    end

    test "return a list with 3, 6 and 9 replaced by 'Fizz'" do
      assert Fizzbuzz.run(9) == {:ok, [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz"]}
    end

    test "return a list with 5 and 10 replaced by 'Fizz'" do
      assert Fizzbuzz.run(10) == {:ok, [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz"]}
    end

    test "return a list with 15 replaced by 'FizzBuzz'" do
      expected_result = [
        1,
        2,
        "Fizz",
        4,
        "Buzz",
        "Fizz",
        7,
        8,
        "Fizz",
        "Buzz",
        11,
        "Fizz",
        13,
        14,
        "FizzBuzz"
      ]

      assert Fizzbuzz.run(15) == {:ok, expected_result}
    end

    test "return an error when number is bellow 1" do
      assert Fizzbuzz.run(0) == {:error, "Invalid argument"}
    end
  end
end
