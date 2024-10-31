File.open('./foo.txt', external_encoding: Encoding::EUC_JP, internal_encoding: Encoding::UTF_8) do |file|
  puts file.readline
end

File.open('./foo.txt') do |file|
  file.set_encoding(Encoding::EUC_JP, Encoding::UTF_8)
  puts file.readline
end
