def division
  100 / [1, 0].sample
end

begin
  division
  puts '成功しました'
rescue
  puts '50%の確率で失敗するのでやり直します'
  retry
end
