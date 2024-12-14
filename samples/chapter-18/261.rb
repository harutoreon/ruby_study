task process1: :prepare do
  puts '処理1完了'
end

task :prepare do
  puts '準備中'
end

task :process2 do
  puts '処理2完了'
end

task batch_process: [:process1, :process2] do
  puts 'バッチ処理完了'
end
