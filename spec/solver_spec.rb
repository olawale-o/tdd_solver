require_relative 'spec_helper'

describe Solver do
  let(:solver) { Solver.new }
  describe '#factorial' do
    context 'when N is greater or equal to 0' do
      it 'should return 1 when N is 0' do
        result = solver.factorial 0
        expect(result).to eq 1
      end

      it 'should return factorial of integers between 1 and N' do
        result = solver.factorial 10
        expect(result).to eq(10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1)
      end
    end
    context 'negative integers' do
      it 'should raise an exception' do
        expect { solver.factorial(-2) }.to raise_error(RuntimeError, 'This method only accepts 0 and positive integers')
      end
    end
  end

  describe "#reverse" do
    it "Should returns word reversed" do
      word = solver.reverse "hello"
      expect(word).to eq "olleh"
    end
  end
end
