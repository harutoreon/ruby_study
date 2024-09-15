array = [1, 2, 3]

case array
in [0, 1, num]
  puts "この配列の先頭2要素は0と1で、続く値は#{num}です。"
in [1, 2, num]
  puts "この配列の先頭2要素は1と2で、続く値は#{num}です。"
else
  puts "マッチしませんでした"
end

def check_animal(animal)
  case animal
  in { name: String => name, kind: :human, age: age }
    puts "#{name}は#{age}歳の人間です。"
  in { name: String => name, kind: :dog, age: age }
    puts "#{name}は#{age}の犬です。"
  else
    puts "判別不能です。"
  end
end

taro = { name: '太郎', sex: :male, age: 18, kind: :human}
hanako = { name: '花子', sex: :female, age: 19, kind: :dog }
alien = { name: 'xxx', kind: :alien }
not_string_taro = { name: :taro, sex: :male, age: 18, kind: :human }

check_animal(taro)
check_animal(hanako)
check_animal(alien)
check_animal(not_string_taro)

def check_order(order, quantity, payment_method)
  case order
  in { id: id, quantity: ^quantity, payment_method: ^payment_method }
    puts "注文番号#{id}は「数量:#{quantity}個、決済方法:#{payment_method}」の注文です。"
  in { id: id }
    puts "注文番号#{id}は指定した条件に当てはまりません"
  else
    puts "エラー"
  end
end

order = [
  { id: "ORD001", customer: "Alice",   quantity: 3, payment_method: "credit_card" },
  { id: "ORD002", customer: "Bob",     quantity: 2, payment_method: "credit_card" },
  { id: "ORD003", customer: "Charlie", quantity: 1, payment_method: "cash" },
  { id: "ORD004", customer: "Dave",    quantity: 5, payment_method: "bank_transfer" }
]

puts '--- クレジットカードで2個購入した注文を探します ---'
order.each { |order| check_order(order, 2, "credit_card") }

puts '--- 銀行振込で5個購入した注文を探します ---'
order.each { |order| check_order(order, 5, "bank_transfer") }
