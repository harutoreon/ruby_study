require './151_heavy_job'

module HeavyJobResultCaching
  refine HeavyJob do
    def perform
      @result ||= super
    end
  end
end

using HeavyJobResultCaching

job = HeavyJob.new
p job.perform  #=> 初回のメソッド呼び出しは5秒後に出力される。
p job.perform  #=> 2回目以降はすぐに出力される
