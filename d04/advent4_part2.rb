file = File.open('input4.txt')
data =  file.read.split("\n")
total = 0

data.each do |line|
  part1, part2 = line.split(',')
  numb1, numb2= part1.split('-').map(&:to_i)
  numb3, numb4 = part2.split('-').map(&:to_i)
  unless ((numb2 < numb3) || (numb4 < numb1) )
    total += 1
  end
  p total
end
