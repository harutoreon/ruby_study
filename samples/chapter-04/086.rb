animals = { '犬' => 'Dog', '猫' => 'Cat', '鳥' => 'Bird' }
p animals.values_at('猫', '鳥')
p animals.values_at('犬', 'アザラシ', '猫')
