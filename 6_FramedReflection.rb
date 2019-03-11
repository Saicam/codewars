# https://www.codewars.com/kata/framed-reflection
#!/usr/bin/env ruby

def mirror(text)
  x = 0
  text.split(" ").each do |word| x = word.reverse!.length }
  end
end
puts mirror("Hello World")
