file = File.open('input3.txt')
data = file.read.split(/\n/)
alphabet = ("A".."Z").to_a
result = 0


data.each do |backpack|
  diff = []
  first = backpack.chars.each_slice(backpack.length/2).map(&:join)[0]
  second = backpack.chars.each_slice(backpack.length/2).map(&:join)[1]
  first.each_char do | char|
    if second.include?(char)
     diff << char
    else
      diff
    end
  end
  p diff.uniq[0]
   alphabet.include?(diff.uniq[0]) ? result += diff.uniq[0].ord - 38 : result +=diff.uniq[0].ord - 96
  p result
end
