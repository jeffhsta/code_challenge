defmodule Fibonacci do
  @moduledoc false

  @initial_sequence [1, 1]

  def sequence(1), do: {:ok, [List.first(@initial_sequence)]}
  def sequence(2), do: {:ok, @initial_sequence}

  def sequence(sequence_size) when is_integer(sequence_size) and sequence_size > 0 do
    sequence =
      @initial_sequence
      |> next_sequence_number(sequence_size)
      |> Enum.reverse()

    {:ok, sequence}
  end

  def sequence(_sequence_size), do: {:error, "Invalid argument"}

  defp next_sequence_number(sequence, sequence_size) when length(sequence) >= sequence_size,
    do: sequence

  defp next_sequence_number(sequence = [last_number, before_last_number | _], sequence_size) do
    next_number = last_number + before_last_number
    next_sequence_number([next_number | sequence], sequence_size)
  end
end
