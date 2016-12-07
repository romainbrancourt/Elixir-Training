defmodule Roman do
  @moduledoc """
 Arabic to roman numerals module
 """

  @numerals [
            {1000, "M"},
            {900, "CM"},
            {500, "D"},
            {100, "C"},
            {90, "XC"},
            {50, "L"},
            {40, "XL"},
            {10, "X"},
            {9, "IX"},
            {5, "V"},
            {4, "IV"},
            {1, "I"}
          ]
  @doc """
  Converts the given arabic `number`.

  Returns "roman" numeral.

  ## Examples

      iex> Roman.converts(59)
      "LIX"

  """
  def converts(number) do
    converts(number, @numerals)
  end
  defp converts(number, _) when number < 1 do
    ""
  end
  defp converts(number, [{arabic, roman} | tail]) when number >= arabic do
    roman <> converts(number - arabic, [{arabic, roman} | tail])
  end
  defp converts(number, [_ | tail]) do
    converts(number, tail)
  end
end
