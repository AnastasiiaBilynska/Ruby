require 'rspec'
require './perimeter'

describe Perimeter do
  subject { Perimeter.new }
  context 'testing perimeter' do
    context 'return perimeter' do
      let(:num) { 2 }
      let(:expectation) { 16 }
      it { expect(subject.perimeter(num)).to eql(expectation) }
    end
    context 'return perimeter' do
      let(:num) { 5 }
      let(:expectation) { 80 }
      it { expect(subject.perimeter(num)).to eql(expectation) }
    end
    context 'return perimeter' do
      let(:num) { 7 }
      let(:expectation) { 216 }
      it { expect(subject.perimeter(num)).to eql(expectation) }
    end
    context 'return perimeter' do
      let(:num) { 10 }
      let(:expectation) { 928 }
      it { expect(subject.perimeter(num)).to eql(expectation) }
    end
    context 'return perimeter' do
      let(:num) { 20 }
      let(:expectation) { 114_624 }
      it { expect(subject.perimeter(num)).to eql(expectation) }
    end
    context 'return perimeter' do
      let(:num) { 50 }
      let(:expectation) { 213_265_164_688 }
      it { expect(subject.perimeter(num)).to eql(expectation) }
    end
    context 'return perimeter' do
      let(:num) { 100 }
      let(:expectation) { 6_002_082_144_827_584_333_104 }
      it { expect(subject.perimeter(num)).to eql(expectation) }
    end
    context 'return perimeter' do
      let(:num) { 180 }
      let(:expectation) { 314_277_402_397_595_576_109_005_891_268_234_750_084 }
      it { expect(subject.perimeter(num)).to eql(expectation) }
    end
    context 'return perimeter' do
      let(:num) { 300 }
      let(:expectation) { 3_765_563_580_170_350_269_813_084_895_225_152_661_245_605_470_860_136_918_008_636_804 }
      it { expect(subject.perimeter(num)).to eql(expectation) }
    end
    context 'return perimeter' do
      let(:num) { 500 }
      let(:expectation) do
        2_362_425_027_542_282_167_538_999_091_770_205_712_168_371_625_660_854_753_765_546_783_141_099_308_400_948_230_006_358_531_927_265_833_165_504
      end
      it { expect(subject.perimeter(num)).to eql(expectation) }
    end
  end
end
