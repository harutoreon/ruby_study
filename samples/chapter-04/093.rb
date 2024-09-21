english_japanese = Hash.new

p english_japanese['dog']
p english_japanese

english_japanese_with_defaut_message = Hash.new { |hash, key| "#{key}の日本語訳はまだ登録されていません" }

p english_japanese_with_defaut_message['dog']
p english_japanese_with_defaut_message

english_japanese_remembering_absence = Hash.new { |hash, key| hash[key] = "#{key}の日本語訳はまだ登録されていませんでした" }
p english_japanese_remembering_absence['dog']
p english_japanese_remembering_absence
