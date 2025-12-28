require 'net/http'
require 'nokogiri'

download_dir = 'images'
Dir.mkdir(download_dir) unless Dir.exist?(download_dir)

Dir.chdir(download_dir) do
  url = URI.parse('https://commons.wikimedia.org/w/index.php?search=Ruby&title=Special:MediaSearch&go=Go&type=image')
  doc = Nokogiri::HTML5(Net::HTTP.get(url))

  doc.css('.sdms-search-results img[src]').each do |element|
    begin
      image_url = URI.parse(element.attr('src').gsub(' ', '+'))
      unless image_url.absolute?
        image_url = url + image_url
      end

      puts "ダウンロード中: #{image_url}"
      image = Net::HTTP.get(image_url)
    rescue => e
      puts "ダウンロードに失敗しました: #{e.message}"
      next
    end
#
    file_name = File.basename(image_url.path)
    File.binwrite(file_name, image)
    puts "保存完了: #{file_name}"
  end
end
