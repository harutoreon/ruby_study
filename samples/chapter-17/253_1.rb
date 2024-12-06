require 'mini_magick'

image = MiniMagick::Image.open('sample_image.jpg')
image.strip

p image.exif  #=> {}

image.write('exif-removed.jpg')
