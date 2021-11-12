require 'rspec'
require './perimeter'

describe Perimeter do
  inst = Perimeter.new
  describe 'when testing perimeter' do
    it 'Should return perimeter of the squares' do
      expect(inst.perimeter(2)).to eql(16)
    end
    it 'Should return perimeter of the squares' do
      expect(inst.perimeter(5)).to eql(80)
    end
    it 'Should return perimeter of the squares' do
      expect(inst.perimeter(7)).to eql(216)
    end
    it 'Should return perimeter of the squares' do
      expect(inst.perimeter(10)).to eql(928)
    end
    it 'Should return perimeter of the squares' do
      expect(inst.perimeter(20)).to eql(114_624)
    end
    it 'Should return perimeter of the squares' do
      expect(inst.perimeter(50)).to eql(213_265_164_688)
    end
    it 'Should return perimeter of the squares' do
      expect(inst.perimeter(100)).to eql(6_002_082_144_827_584_333_104)
    end
    it 'Should return perimeter of the squares' do
      expect(inst.perimeter(180)).to eql(314_277_402_397_595_576_109_005_891_268_234_750_084)
    end
    it 'Should return perimeter of the squares' do
      expect(inst.perimeter(300)).to eql(3_765_563_580_170_350_269_813_084_895_225_152_661_245_605_470_860_136_918_008_636_804)
    end
    it 'Should return perimeter of the squares' do
      expect(inst.perimeter(500)).to eql(2_362_425_027_542_282_167_538_999_091_770_205_712_168_371_625_660_854_753_765_546_783_141_099_308_400_948_230_006_358_531_927_265_833_165_504)
    end
  end
end
