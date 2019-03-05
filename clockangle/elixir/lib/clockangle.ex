defmodule Clockangle do
  @moduledoc false

  @base_angle 360
  @hour_scale round(@base_angle / 12)
  @base_minute 60
  @minute_scale round(@base_angle / @base_minute)

  def run(hour, _minute) when hour not in 1..12, do: {:error, "Invalid hour"}
  def run(_hour, minute) when minute not in 0..59, do: {:error, "Invalid minute"}

  def run(hour, minute) when is_integer(hour) and is_integer(minute) do
    hour_right_scale = calculate_angle(hour, @hour_scale)
    minute_right_scale = calculate_angle(minute, @minute_scale)
    extra_hour_angle = calculate_extra_angle(minute)

    right_angle = abs((hour_right_scale + extra_hour_angle) - minute_right_scale)
    left_angle = @base_angle - right_angle

    {:ok, Enum.min([left_angle, right_angle])}
  end

  defp calculate_angle(value, scale), do: rem(value * scale, @base_angle)
  defp calculate_extra_angle(minute), do: round((minute / @base_minute) * @hour_scale)
end
