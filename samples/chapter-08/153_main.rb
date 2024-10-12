require './153_heavy_job'
require './153_heavy_job_result_caching.rb'

job = HeavyJob.new
p job.perform  #=> :finished, 初回はメソッド呼び出しの5秒後に出力される
p job.perform  #=> :finished, 2回目以降はすぐ出力される
