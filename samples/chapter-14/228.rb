require 'logger'

logger = Logger.new('sample.log')

logger.unknown 'エラー'
logger.debug   'デバッグ'
logger.info    '参考'
logger.warn    '警告'
logger.error   'エラー'
logger.fatal   '致命的'

$ cat sample.log
#=> # Logfile created on 2024-11-21 19:53:30 +0900 by logger.rb/v1.6.1
#   A, [2024-11-21T19:53:30.603440 #3319]   ANY -- : エラー
#   D, [2024-11-21T19:53:30.603555 #3319] DEBUG -- : デバッグ
#   I, [2024-11-21T19:53:30.603606 #3319]  INFO -- : 参考
#   W, [2024-11-21T19:53:30.603651 #3319]  WARN -- : 警告
#   E, [2024-11-21T19:53:30.603694 #3319] ERROR -- : エラー
#   F, [2024-11-21T19:53:30.603736 #3319] FATAL -- : 致命的
