BATCH_SIZE = 4
INPUT = 'questions'
batch = 0
File.readlines(INPUT).each_slice(BATCH_SIZE) do |array| 
  puts array.map{ |e| "\"#{e.strip()}\"" } * ' ' + " output#{batch}.svg"
  batch = batch + 1
end
