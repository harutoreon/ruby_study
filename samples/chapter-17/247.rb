require 'minitar'
require 'zlib'

Zlib::GzipReader.open('input.tar.gz') do |gz|
  Minitar.unpack(gz, 'output')
end
