require './151_heavy_job'

module HeavyJobResultCaching
  refine HeavyJob do
    def perform
      @result ||= super
    end
  end
end

class CacheableHeavyJob
  using HeavyJobResultCaching

  def initialize
    @job = HeavyJob.new
  end

  def perform
    @job.perform
  end
end

# CacheableHeavyJobの外なのでRefinementsが無効
puts 'HeavyJob'
job = HeavyJob.new
p job.perform  #=> :finished
p job.perform  #=> :finished, 2回目以降もメソッド呼び出しの5秒後に出力される

# CacheableHeavyJobのメソッドなのでRefinementsが有効
puts 'CacheableHeavyJob'
job = CacheableHeavyJob.new
p job.perform  #=> :finished
p job.perform  #=> :finished, 2回目以降はすぐに出力される
