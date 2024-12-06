require 'mini_magick'

image = MiniMagick::Image.open('sample_image.jpg')
p image.exif
#=> {
#     "ColorSpace"=>"65535, ",
#     "ComponentsConfiguration"=>"...",
#     "ExifOffset"=>"102, ",
#     "ExifVersion"=>"0210",
#     "FlashPixVersion"=>"0100",
#     "Orientation"=>"1, ",
#     "PixelXDimension"=>"200, ",
#     "PixelYDimension"=>"300, ",
#     "ResolutionUnit"=>"2, ",
#     "UserComment"=>"ASCII",
#     "XResolution"=>"72/1",
#     "YCbCrPositioning"=>"1, ",
#     "YResolution"=>"72/1"
#   }
