class Solver
  def factorial(number)
    raise 'This method only accepts 0 and positive integers' if number.negative?

    if number.zero?
      1
    else
      number * factorial(number - 1)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 5).zero? && (num % 3).zero?
      'fizzbuzz'
    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      num
    end
  end
end
