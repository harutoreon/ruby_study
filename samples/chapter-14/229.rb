require 'logger'

logger = Logger.new(STDOUT)
logger.level = Logger::ERROR

logger.unknown 'エラー'
logger.debug 'デバッグ'
logger.info '参考'
logger.warn '警告'
logger.error 'エラー'
logger.fatal '致命的'

#=> A, [2024-11-21T20:03:12.852340 #4176]   ANY -- : エラー
#   E, [2024-11-21T20:03:12.852499 #4176] ERROR -- : エラー
#   F, [2024-11-21T20:03:12.852534 #4176] FATAL -- : 致命的
