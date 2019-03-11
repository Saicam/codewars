# https://www.codewars.com/kata/framed-reflection
#!/usr/bin/env ruby
def mirror(text)
  x = 0
  aux = text.split(" ")
  aux_txt = ""
  aux.each do |word|
     x = word.length if x < word.reverse!.length
  end
  aux_txt = "*" * (x + 4) + "\n"
  aux.each do |word|
    aux_txt += "* " + word + " " * (x - word.length) + " *\n"
  end
   return aux_txt += "*" * (x + 4)

end

puts mirror("Hello Worlds")
