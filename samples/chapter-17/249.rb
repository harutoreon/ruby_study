require 'zip'

Zip::File.open('archive.zip') do |zip|
  zip.each do |entry|
    entry.extract
  end
end
