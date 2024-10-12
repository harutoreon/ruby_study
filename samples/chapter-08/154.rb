class String
  def decorate(decoration = '★')
    "#{decoration * 3} #{self} #{decoration * 3}"
  end
end

p 'Hello'.decorate       #=> "★★★ Hello ★★★"
p 'Hello'.decorate('◯')  #=> "◯◯◯ Hello ◯◯◯"
