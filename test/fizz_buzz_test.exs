defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns converted list" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}
      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when a invalid file is provided, returns error message" do
      expected_response = {:error, "Error reading the file: enoent"}
      assert FizzBuzz.build("not_existent.txt") == expected_response
    end
  end

end
