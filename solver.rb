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

    if (num % 5 == 0) && (num % 3 == 0)
      "fizzbuzz"
    elsif (num % 5 == 0)
      "buzz"
    elsif (num % 3 == 0)
      "fizz"
    else num
    end
  end
end
