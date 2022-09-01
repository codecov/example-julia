module calculator

  export add, subtract, multiply, divide
  add(x, y) = x + y
  subtract(x, y) = x - y
  multiply(x, y) = x * y

  function divide(x, y)
    if y == 0
      return "Cannot divide by 0"
    end
    return x * 1.0 /y
  end
end
