require 'rspec'
require './two_decimal'

describe Num do
  number = Num.new
  describe 'when testing two_decimal_places' do
    it 'Should return given number rounded to two decimal places' do
      expect(number.two_decimal_places(0.5697445587458)).to eql(0.57)
    end
    it 'Should return given number rounded to two decimal places' do
      expect(number.two_decimal_places(1_222_222_222.77711111112)).to eql(1_222_222_222.78)
    end
    it 'Should return given number rounded to two decimal places' do
      expect(number.two_decimal_places(-20.4327598745)).to eql(-20.43)
    end
    it 'Should return given number rounded to two decimal places' do
      expect(number.two_decimal_places(122.5555555555555)).to eql(122.56)
    end
    it 'Should return given number rounded to two decimal places' do
      expect(number.two_decimal_places(7.34755888445)).to eql(7.35)
    end
    it 'Should return given number rounded to two decimal places' do
      expect(number.two_decimal_places(-355_555_555.12711111112)).to eql(-355_555_555.13)
    end
    it 'Should return given number rounded to two decimal places' do
      expect(number.two_decimal_places(-1.11111111111119)).to eql(-1.11)
    end
    it 'Should return given number rounded to two decimal places' do
      expect(number.two_decimal_places(5.9244444444445)).to eql(5.92)
    end
    it 'Should return given number rounded to two decimal places' do
      expect(number.two_decimal_places(5.00000001)).to eql(5.00)
    end
    it 'Should return given number rounded to two decimal places' do
      expect(number.two_decimal_places(5.9999999)).to eql(6.00)
    end
  end
end
