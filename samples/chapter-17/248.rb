require 'zip'

Zip::File.open('archive.zip', create: true) do |zip|
  zip.add('dir', 'dir')

  Dir.children('dir').each do |file|
    zip.add("dir/#{file}", "dir/#{file}")
  end
end
