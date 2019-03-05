defmodule ClockangleTest do
  use ExUnit.Case

  describe "Clockangle.run/2" do
    test "when clock is in 12:00 return angle 0" do
      assert Clockangle.run(12, 0) == {:ok, 0}
    end

    test "when pass hour less then 1 reurn an error" do
      assert Clockangle.run(0, 0) == {:error, "Invalid hour"}
    end

    test "when pass hour more then 12 reurn an error" do
      assert Clockangle.run(13, 0) == {:error, "Invalid hour"}
    end

    test "when pass minute less then 0 reurn an error" do
      assert Clockangle.run(1, -1) == {:error, "Invalid minute"}
    end

    test "when pass minute more then 59 reurn an error" do
      assert Clockangle.run(1, 60) == {:error, "Invalid minute"}
    end

    test "when clock is in 3:00 return angle 90" do
      assert Clockangle.run(3, 0) == {:ok, 90}
    end

    test "when clock is in 6:00 return angle 180" do
      assert Clockangle.run(6, 0) == {:ok, 180}
    end

    test "when clock is in 9:00 return angle 90" do
      assert Clockangle.run(9, 0) == {:ok, 90}
    end

    test "when clock is in 3:30 return angle 105" do
      assert Clockangle.run(3, 30) == {:ok, 105}
    end
  end
end
