require 'logger'

logger = Logger.new(STDOUT, progname: __FILE__)

logger.unknown 'エラー'
logger.debug 'デバッグ'
logger.info '参考'
logger.error 'エラー'
logger.fatal '致命的'

#=> A, [2024-11-21T19:42:24.056946 #2441]   ANY -- 227.rb: エラー
#   D, [2024-11-21T19:42:24.058520 #2441] DEBUG -- 227.rb: デバッグ
#   I, [2024-11-21T19:42:24.058555 #2441]  INFO -- 227.rb: 参考
#   E, [2024-11-21T19:42:24.058644 #2441] ERROR -- 227.rb: エラー
#   F, [2024-11-21T19:42:24.058682 #2441] FATAL -- 227.rb: 致命的
