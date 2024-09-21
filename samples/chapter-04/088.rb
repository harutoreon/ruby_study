animals = { '犬' => 'Dog', '猫' => 'Cat', '鳥' => 'Bird' }
result = animals.delete('猫')
p animals
p result

result = animals.delete('クジラ')
p animals
p result

result = animals.delete('人間') { |key| "#{key}は登録されていません" }
p animals
p result
