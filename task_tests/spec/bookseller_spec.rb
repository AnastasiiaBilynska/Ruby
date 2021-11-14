require 'rspec'
require './bookseller'

describe Bookseller do
  subject { Bookseller.new }
  context 'testing stockList' do
    context 'return a string with category and sum of the books' do
      let(:args) { [['AVFG 100', 'GHJU 500', 'AVGH 200', 'BBQM 510'], %w[A B]] }
      let(:expectation) { '(A : 300) - (B : 510)' }
      it { expect(subject.stockList(*args)).to eql(expectation) }
    end
    context 'return a string with category and sum of the books' do
      let(:args) { [['SAHZ 18', 'ZJFL -230', 'ZZZZ -270', 'OBHN 510'], ['Z']] }
      let(:expectation) { '(Z : -500)' }
      it { expect(subject.stockList(*args)).to eql(expectation) }
    end
    context 'return a string with category and sum of the books' do
      let(:args) { [['HGTF 18', 'KJFF 230', 'DFGG 270', 'KIHN 510'], ['K']] }
      let(:expectation) { '(K : 740)' }
      it { expect(subject.stockList(*args)).to eql(expectation) }
    end
    context 'return a string with category and sum of the books' do
      let(:args) { [['AVFG 100', 'GHJU 500', 'FGDJ 10', 'AVGH 200', 'BBQM 510'], %w[G F]] }
      let(:expectation) { '(G : 500) - (F : 10)' }
      it { expect(subject.stockList(*args)).to eql(expectation) }
    end
    context 'return a string with category and sum of the books' do
      let(:args) { [['PVFG 1325', 'HJGU 500', 'IIDJ 10'], %w[P F]] }
      let(:expectation) { '(P : 1325) - (F : 0)' }
      it { expect(subject.stockList(*args)).to eql(expectation) }
    end
    context 'return a string with category and sum of the books' do
      let(:args) { [['JGJF 100008', 'JJFJ 230', 'DFGG -200', 'DISN 510'], %w[J D]] }
      let(:expectation) { '(J : 100238) - (D : 310)' }
      it { expect(subject.stockList(*args)).to eql(expectation) }
    end
    context 'return a string with category and sum of the books' do
      let(:args) { [['PVFG 1325', 'HJGU 500', 'PPPG 75', 'IIDJ 10'], %w[P H I]] }
      let(:expectation) { '(P : 1400) - (H : 500) - (I : 10)' }
      it { expect(subject.stockList(*args)).to eql(expectation) }
    end
    context 'return a string with category and sum of the books' do
      let(:args) do
        [['PVFG 333', 'HJGU 245', 'AFFH 888', 'BGFD 220', 'CBVG 11', 'PPPG 81', 'IIDJ 10'], %w[A B C P H I]]
      end
      let(:expectation) { '(A : 888) - (B : 220) - (C : 11) - (P : 414) - (H : 245) - (I : 10)' }
      it { expect(subject.stockList(*args)).to eql(expectation) }
    end
    context 'return a string with category and sum of the books' do
      let(:args) { [[], %w[A D]] }
      let(:expectation) { '' }
      it { expect(subject.stockList(*args)).to eql(expectation) }
    end
    context 'return a string with category and sum of the books' do
      let(:args) { [['GFFD 200', 'GHHH 500'], []] }
      let(:expectation) { '' }
      it { expect(subject.stockList(*args)).to eql(expectation) }
    end
  end
end
