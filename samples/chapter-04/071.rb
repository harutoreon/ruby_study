# organisms・・・複数の生物
# elephant・・・ゾウ
# ant・・・アリ
# fox・・・キツネ
# woodpecker・・・キツツキ

organisms = ['elephant', 'ant', 'fox', 'ant', 'fox', 'woodpecker']

p organisms.uniq
p organisms.uniq { |organism| organism.length }
