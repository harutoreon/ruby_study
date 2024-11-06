begin
  (0..10).each do |num|
    if num == 8
      raise '8のとき、異常終了'
    else
      puts num
    end
  end
rescue => e
  p e
end
#=> 0
#   1
#   2
#   3
#   4
#   5
#   6
#   7
#   #<RuntimeError: 8のとき、異常終了>

begin
  (0..10).each do |num|
    if num == 8
      raise StandardError, '8のとき、異常終了'
    else
      puts num
    end
  end
rescue => e
  p e
end
#=> 0
#   1
#   2
#   3
#   4
#   5
#   6
#   7
#   #<StandardError: 8のとき、異常終了>
