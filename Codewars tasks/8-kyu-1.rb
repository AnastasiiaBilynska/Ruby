#  https://www.codewars.com/kata/find-numbers-which-are-divisible-by-given-number
#
# Find numbers which are divisible by given number
#
#  Complete the function which takes two arguments and returns all numbers which are divisible by the given divisor. First argument is an array of numbers and the second is the divisor.
#
# Example
# divisible_by([1, 2, 3, 4, 5, 6], 2) == [2, 4, 6]

def divisible_by(numbers, divisor)
  numbers.select { |num| (num % divisor).zero? }
end
