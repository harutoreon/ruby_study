def division
  100 / [1, 0].sample
end

(1..10).each do |num|
  begin
    division
    puts '成功しました'
  rescue
    puts '失敗しました'
  ensure
    puts "#{num}回目の処理終わり"
  end
end
