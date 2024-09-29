text = <<~TEXT
  aBcDeFgHiJkLmNoPqRsT
  1234567890qwertyuio
  zxcvbnmASDFGHJKLMNb
  !@#$%^&*()_+QWERTYU
TEXT

p text.match(/7.+A/m)[0]
p text.match(/7.+A/)
