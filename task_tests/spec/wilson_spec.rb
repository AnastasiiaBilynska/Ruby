require 'rspec'
require './wilson'

describe Wilson do
  subject { Wilson.new }
  context 'testing factorial' do
    context 'return factorial' do
      let(:num) { 0 }
      let(:expectation) { 1 }
      it { expect(subject.facto(num)).to eql(expectation) }
    end
    context 'return fact' do
      let(:num) { 1 }
      let(:expectation) { 1 }
      it { expect(subject.facto(num)).to eql(expectation) }
    end
    context 'return fact' do
      let(:num) { 5 }
      let(:expectation) { 120 }
      it { expect(subject.facto(num)).to eql(expectation) }
    end
    context 'return fact' do
      let(:num) { 10 }
      let(:expectation) { 3_628_800 }
      it { expect(subject.facto(num)).to eql(expectation) }
    end
    context 'return fact' do
      let(:num) { 20 }
      let(:expectation) { 2_432_902_008_176_640_000 }
      it { expect(subject.facto(num)).to eql(expectation) }
    end
  end
  context 'testing am_I_Wilson' do
    context 'return true' do
      arr = [5, 13, 563]
      let(:expectation) { true }
      arr.each do |element|
        let(:element) { element }
        it { expect(subject.am_I_Wilson(element)).to eql(expectation) }
      end
    end
    context 'return false' do
      let(:num) { 2 }
      let(:expectation) { false }
      it { expect(subject.am_I_Wilson(num)).to eql(expectation) }
    end
    context 'return false' do
      let(:num) { 10 }
      let(:expectation) { false }
      it { expect(subject.am_I_Wilson(num)).to eql(expectation) }
    end
    context 'return false' do
      let(:num) { 11_111_111 }
      let(:expectation) { false }
      it { expect(subject.am_I_Wilson(num)).to eql(expectation) }
    end
    context 'return false' do
      let(:num) { 0 }
      let(:expectation) { false }
      it { expect(subject.am_I_Wilson(num)).to eql(expectation) }
    end
    context 'return false' do
      let(:num) { 1 }
      let(:expectation) { false }
      it { expect(subject.am_I_Wilson(num)).to eql(expectation) }
    end
  end
end
