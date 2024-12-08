require 'csv'
require 'rubyXL'

workbook = RubyXL::Workbook.new

users = CSV.read('users.csv')

worksheet1 = workbook.worksheets[0]
worksheet1.sheet_name = 'ユーザー'
users.each_with_index do |row, i|
  row.each_with_index do |value, j|
    value = value.to_i if value.match?(/\A\d+\z/)
    worksheet1.add_cell(i, j, value)
  end
end

orders = CSV.read('orders.csv')

worksheet2 = workbook.add_worksheet('注文')
orders.each_with_index do |row, i|
  row.each_with_index do |value, j|
    value = value.to_i if value.match?(/\A\d+\z/)
    worksheet2.add_cell(i, j, value)
  end
end
worksheet2.add_cell(orders.size, 2, nil, 'SUM(C2:C5)')

workbook.write('output.xlsx')
