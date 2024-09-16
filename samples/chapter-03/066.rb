# def logging(&block)
#   puts 'ブロック呼び出し開始'
#   puts block.call
#   puts 'プロック呼び出し終了'
# end

# logging do
#   puts 'ブロック開始'
#   next 'ブロック中断'
#   puts 'ブロック終了'
# end

# class BlockCaller
#   def initialize(&block)
#     @block = block
#   end

#   def execute
#     @block.call
#   end
# end

# def execute_block_caller
#   puts 'メソッド開始'

#   block_caller = BlockCaller.new do
#     puts 'ブロック開始'
#     return
#     puts 'ブロック終了'
#   end

#   block_caller.execute

#   puts 'メソッド終了'
# end

# execute_block_caller

# def create_block_caller
#   BlockCaller.new do
#     puts 'ブロック開始'
#     return
#     puts 'ブロック終了'
#   end
# end

# begin
#   block_caller = create_block_caller
#   block_caller.execute
# rescue => e
#   p e
# end
