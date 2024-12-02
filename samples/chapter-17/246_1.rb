require 'minitar'
require 'zlib'

input_filenames = %w(foo.txt bar.txt baz.txt)

Zlib::GzipWriter.open('output.tar.gz') do |gz|
  Minitar.open(gz, 'w') do |output_tar|
    input_filenames.each do |input_filename|
      Minitar.pack_file(input_filename, output_tar)
    end
  end
end
