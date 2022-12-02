file = File.open("input.txt")
data =  file.read.split("\n\n")
array = []
data.each do |elf|
  number = 0
  elf.split("\n").each do |carry|
    number += carry.to_i
  end
  array << number
  array.sort
end
