require 'csv'
require 'prawn'
require 'prawn/table'

users = CSV.read('users.csv')
orders = CSV.read('orders.csv')

Prawn::Document.generate(
  'サンプル.pdf',

  # A4 サイズを使う
  page_size: 'A4',

  # ページの余白を設定する
  top_margin: 50,
  bottom_margin: 50,
  left_margin: 50,
  right_margin: 50
) do
  font 'ipaexm.ttf'
  text 'ユーザーの一覧', align: :center, size: 18

  # 出力位置を20ポイント下に移動する
  move_down 20

  # 2次元配列を渡して、ページ中央に表を出力する
  table users, position: :center

  # 改ページする
  start_new_page

  text '注文の一覧', align: :center, size: 18
  move_down 20

  table orders, position: :center
end
