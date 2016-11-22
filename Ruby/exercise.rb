puts "What is the source file?"
source_file = gets.chomp
puts "What is the destination file?"
destination_file = gets.chomp
source_file_contents = IO.read(source_file)
IO.write('source.txt', source_file_contents)
puts "The source file is #{source_file}\nThe destination is #{destination_file}\nIt contents: #{source_file_contents}"