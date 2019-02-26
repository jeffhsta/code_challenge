defmodule Fizzbuzz do
  @moduledoc false

  def run(number) when is_integer(number) and number > 0,
    do: {:ok, Enum.map(1..number, &parse_value/1)}

  def run(_number), do: {:error, "Invalid argument"}

  defp parse_value(number) when rem(number, 15) == 0, do: "FizzBuzz"
  defp parse_value(number) when rem(number, 5) == 0, do: "Buzz"
  defp parse_value(number) when rem(number, 3) == 0, do: "Fizz"
  defp parse_value(number), do: number
end
