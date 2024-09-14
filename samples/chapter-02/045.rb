[1, 2, 3]
  .map { |i| i ** 2 }.tap { |array| p array }
  .reject { |i| i > 5 }.tap { |array| p array }
  .reverse.tap { |array| p array }
