# https://www.codewars.com/kata/5df754981f177f0032259090/train/ruby
#
# A floating-point system
#
# A ﬂoating-point number can be represented as mantissa * radix ^ exponent (^ is raising radix to power exponent). In this kata we will be given a positive float aNumber and we want to decompose it into a positive integer mantissa composed of a given number of digits (called digitsNumber) and of an exponent.
#
# Example:
# aNumber = 0.06
#
# If the number of digits asked for the mantissa is digitsNumber = 10 one can write
#
# aNumber : 6000000000 * 10 ^ -11
# the exponent in this example est -11.
#
# Task
# The function mantExp(aNumber, digitsNumber) will return aNumber in the form of a string: "mantissaPexponent" (concatenation of "mantissa", "P", "exponent"). So:
#
# Examples:
# mantExp(0.06, 10) returns "6000000000P-11".
# mantExp(72.0, 12)   returns "720000000000P-10"
# mantExp(1.0, 5) returns "10000P-4"
# mantExp(123456.0, 4) returns "1234P2"
# Notes:
# In some languages aNumber could be given in the form of a string:
# mantExp("0.06", 10) returns "6000000000P-11".
# 1 <= digitsNumber <= 15
# 0 < aNumber < 5.0 ^ 128
# Please ask before translating
#
#

def mant_exp(a_number, digits_number)
  arr = (a_number).split('.')
  mantissa = arr.join('').gsub(/^0+/, '')
  exponent = -arr[1].length
  while mantissa.length < digits_number
    mantissa += '0'
    exponent -= 1
  end
  exponent += mantissa.length - digits_number
  "#{mantissa[0...digits_number]}P#{exponent}"
end
