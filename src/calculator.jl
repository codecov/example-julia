module calculator

  export add, subtract, mulitply, divide
  add(x, y) = x + y
  subtract(x, y) = x - y
  mulitply(x, y) = x * y
  divide(x, y) = y == 0  ? "Cannot divide by 0" : x * 1.0 / y

  print("meow")
end
