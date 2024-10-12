class HeavyJob
  def perform
    sleep 5

    :finished
  end
end
