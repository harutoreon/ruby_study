require 'minitar'
require 'zlib'

Zlib::GzipWriter.open('output.tar.gz') do |gz|
  Minitar.pack('input_dir', gz)
end
