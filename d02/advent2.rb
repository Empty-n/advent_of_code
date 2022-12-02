[]
file = File.open('input2.txt')
data =  file.read.split("\n")
total = 0
data.each do |game|
  op, me = game.split(' ')
  case [op, me]
  when ["A", "X"]
    total += 3
  when ["A", "Z"]
    total += 8
  when ["A", "Y"]
    total += 4
  when ["B", "X"]
    total += 1
  when ["B", "Y"]
    total += 5
  when ["B", "Z"]
    total += 9
  when ["C", "X"]
    total += 2
  when ["C", "Y"]
    total += 6
  else
    total += 7
  end
  p total
end

"Anyway, the second column says how the round needs to end:
X means you need to lose, Y means you need to end the round
in a draw, and Z means you need to win. Good luck!"
