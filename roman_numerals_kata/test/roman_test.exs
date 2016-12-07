defmodule RomanTest do
  use ExUnit.Case
  doctest Roman

  test "converts arabic to roman numerals" do
    numerals = [
                {0, ""},
                {1, "I"},
                {2, "II"},
                {4, "IV"},
                {5, "V"},
                {6, "VI"},
                {9, "IX"},
                {10, "X"},
                {19, "XIX"},
                {28, "XXVIII"},
                {42, "XLII"},
                {49, "XLIX"},
                {69, "LXIX"},
                {75, "LXXV"},
                {890, "DCCCXC"},
                {900, "CM"},
                {1800, "MDCCC"},
                {1984, "MCMLXXXIV"}
              ]
    Enum.each numerals, fn {arabic, roman} -> assert Roman.converts(arabic) == roman end
  end
end
