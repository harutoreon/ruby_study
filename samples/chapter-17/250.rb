require 'mini_magick'

image = MiniMagick::Image.open('sample_image.jpg')

p image

image.write('output_sample_image.jpg')
