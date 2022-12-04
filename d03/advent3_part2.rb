file = File.open('input3.txt')
lines = file.read.split(/\n/)
alphabet = ("A".."Z").to_a
result = 0


lines.each_slice(3).to_a.map do |elfs|
  elfs[0].each_char do |char|
    if (elfs[1].include?(char) && elfs[2].include?(char))
       alphabet.include?(char) ? result +=  char.ord - 38 : result += char.ord - 96
       break
    end
  end
end
result
