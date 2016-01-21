unless ARGV.length == 1
  fail 'error: must specify file with questions'
end

INPUT_FILE = ARGV[0]

BATCH_SIZE = 4
batch = 0

File.readlines(INPUT_FILE).each_slice(BATCH_SIZE) do |array| 
  puts array.map{ |e| "\"#{e.strip()}\"" } * ' ' + " output#{batch}.svg"
  batch = batch + 1
end
