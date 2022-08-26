module Calculator

  export add, subtract, mulitply, divide

  function add(x, y)
    x + y
  end

  function subtract(x, y)
    x - y
  end

  function mulitply(x, y)
    x * y
  end

  function divide(x, y)
    if y == 0
      return "Cannot divide by 0"
    end
    x / y
  end
end
