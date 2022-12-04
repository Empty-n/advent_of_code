file = File.open('input4.txt')
data =  file.read.split("\n")
total = 0

data.each do |line|
  part1, part2 = line.split(',')
  numb1, numb2= part1.split('-').map(&:to_i)
  numb3, numb4 = part2.split('-').map(&:to_i)
  p numb1, numb2, numb3, numb4
  if ((numb1 <= numb3 && numb4 <= numb2) || (numb3 <= numb1 && numb2 <= numb4) )
    total += 1
  end
  p total
end
