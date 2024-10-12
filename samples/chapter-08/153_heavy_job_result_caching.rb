module HeavyJobResultCaching
  def perform
    @result ||= super
  end
end

class HeavyJob
  prepend HeavyJobResultCaching
end
