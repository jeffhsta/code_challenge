defmodule FibonacciTest do
  use ExUnit.Case

  describe "Fibonacci.sequence/1" do
    test "passing 1 return only the first number of sequence" do
      assert Fibonacci.sequence(1) == {:ok, [1]}
    end

    test "passing 2 return the first two number of sequence" do
      assert Fibonacci.sequence(2) == {:ok, [1, 1]}
    end

    test "passing 10 return 10 number of sequence" do
      assert Fibonacci.sequence(10) == {:ok, [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]}
    end

    test "return an error when sequence lenth is below 1" do
      assert Fibonacci.sequence(0) == {:error, "Invalid argument"}
    end
  end
end
