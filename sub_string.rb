dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_string(s, array)
  s = s.downcase
  words_found = Hash.new
  
  array.each do |word|
    count = s.scan(word).size 
    if count != 0
      words_found[word] = count
    end
  end 

  words_found
end 

puts "Choose:\n1) Find sub strings\n2) Add a word in the dictionary\n3) Delete a word in the dictionary"

loop do
  choice = gets.chomp.to_i

  case choice
    when 1  
      puts "Write something"
      string = gets.chomp

      until string =~ /^[a-zA-Z\s!?,.']+$/ do
        puts "Only letters of the alphabelt and space"
        string = gets.chomp
      end

      result = sub_string(string, dictionary)

      if result.empty?
        puts "No words found"
      else 
        puts result
      end
      
      break
    when 2
      puts "test 2"
      
      break
    when 3
      puts "test 3"
      
      break
    else
      puts "You can only choose between 1 to 3\nChoose:\n1) Find sub strings\n2) Add a word in the dictionary\n3) Delete a word in the dictionary"
  end
end