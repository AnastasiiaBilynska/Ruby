require 'rspec'
require './wilson'

describe Wilson do
  wilson = Wilson.new
  describe 'when testing fuctorial' do
    it 'Should return a factorial of given number' do
      expect(wilson.fact(0)).to eql(1)
    end
    it 'Should return a factorial of given number' do
      expect(wilson.fact(1)).to eql(1)
    end
    it 'Should return a factorial of given number' do
      expect(wilson.fact(5)).to eql(120)
    end
    it 'Should return a factorial of given number' do
      expect(wilson.fact(10)).to eql(3_628_800)
    end
    it 'Should return a factorial of given number' do
      expect(wilson.fact(20)).to eql(2_432_902_008_176_640_000)
    end
  end
  describe 'when testing am_I_Wilson' do
    arr = [5, 13, 563, 5971, 558771, 1964215, 8_121_909, 12_326_713, 23_025_711, 26_921_605, 341_569_806,
           399_292_158]
    arr.each do |element|
      it "Should return true #{element} is Wilson prime" do
        expect(wilson.am_I_Wilson(element)).to eql(true)
      end
    end
    it 'Should return true if given number is Wilson prime' do
      expect(wilson.am_I_Wilson(2)).to eql(false)
    end
    it 'Should return true if given number is Wilson prime' do
      expect(wilson.am_I_Wilson(0)).to eql(false)
    end
    it 'Should return true if given number is Wilson prime' do
      expect(wilson.am_I_Wilson(10)).to eql(false)
    end
    it 'Should return true if given number is Wilson prime' do
      expect(wilson.am_I_Wilson(13)).to eql(true)
    end
    it 'Should return true if given number is Wilson prime' do
      expect(wilson.am_I_Wilson(563)).to eql(true)
    end
    it 'Should return true if given number is Wilson prime' do
      expect(wilson.am_I_Wilson(5971)).to eql(true)
    end
  end
end
