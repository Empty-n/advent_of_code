file = File.open('input3.txt')
lines = file.read.split(/\n/)
alphabet = ("A".."Z").to_a
elf = []
diff = []
result = 0


lines.each_slice(3).to_a.map do |group_of_three_elfs|
  group_of_three_elfs[0].each_char do |char|
    if (group_of_three_elfs[1].include?(char) && group_of_three_elfs[2].include?(char))
       alphabet.include?(char) ? result +=  char.ord - 38 : result += char.ord - 96
       break
    end
  end
end
result
