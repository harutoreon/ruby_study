class OddError < StandardError; end

(0..10).each do |i|
  begin
    raise OddError if i.odd?
    p i
  rescue => e
    p e
  end
end
