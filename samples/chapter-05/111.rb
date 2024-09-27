require 'nkf'

include_fullwidth_string = 'タイサ消ス隆起軒'
include_halfwidth_string = 'ﾀｲｻ消ｽ隆起軒'

p NKF.nkf('-w -Z1 -Z4 -x', include_fullwidth_string)
p NKF.nkf('-w', include_halfwidth_string.tr('a-zA-Z0-9', 'ａ-ｚＡ-Ｚ０-９'))
