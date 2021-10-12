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

  describe '#reverse' do
    it 'Should returns word reversed' do
      word = solver.reverse 'hello'
      expect(word).to eq 'olleh'
    end
  end

  describe '#fizzbuzz' do
    it 'Should returns fizz if number divisible by 3' do
      result = solver.fizzbuzz 3
      expect(result).to eq 'fizz'
    end

    it 'Should returns fizz if number divisible by 5' do
      result = solver.fizzbuzz 5
      expect(result).to eq 'buzz'
    end

    it 'Should returns fizz if number divisible by 3 and 5' do
      result = solver.fizzbuzz 15
      expect(result).to eq 'fizzbuzz'
    end

    it 'Should returns 7 if number = 7' do
      result = solver.fizzbuzz 7
      expect(result).to eq(7)
    end
  end
end
