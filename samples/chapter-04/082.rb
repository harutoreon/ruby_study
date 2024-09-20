numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odds_squares = numbers.filter_map { |num|
  if num.odd?
    num ** 2
  end
}

p odds_squares
