hiragana = /\A[ぁ-ん]+\z/
katakana = /\A[ァ-ンー]+\z/

p 'リニナニヲス'.match?(katakana)
p 'ることにした'.match?(hiragana)
p 'イベントのヨ'.match?(hiragana)
