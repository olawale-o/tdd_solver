class Solver
  def factorial(number)
    raise 'This method only accepts 0 and positive integers' if number.negative?

    if number.zero?
      1
    else
      number * factorial(number - 1)
    end
  end
end
