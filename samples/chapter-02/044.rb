p [1, 2, 3]
  .map { |i| i ** 2 }
  .reject { |i| i > 5 }
  .reverse
