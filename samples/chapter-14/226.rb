require 'benchmark'

Benchmark.bm do |x|
  x.report { a = 1 }
  x.report { b = 1 }
end

label1 = 'String#+:'
label2 = 'String#concat'
label_width = [label1.length, label2.length].max

n = 100_000

Benchmark.bm(label_width) do |x|
  x.report(label1) {
    s = ''
    n.times { s += 'hello' }
  }

  x.report(label2) {
    s = ''
    n.times { s.concat('hello') }
  }
end
