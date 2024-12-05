require 'mini_magick'

image = MiniMagick::Image.open('sample_image.jpg')
image.rotate(90)
image.write('rotated.jpg')

image = MiniMagick::Image.open('sample_image.jpg')
image.flip
image.write('flipped.jpg')

image = MiniMagick::Image.open('sample_image.jpg')
image.flop
image.write('flopped.jpg')
