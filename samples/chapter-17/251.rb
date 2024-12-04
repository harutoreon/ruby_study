require 'mini_magick'

image = MiniMagick::Image.open('sample_image.jpg')
image.resize('100x100')
image.write('output_sample_image.jpg')
