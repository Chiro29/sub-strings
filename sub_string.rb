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

def add(s, array)
  s = s.downcase

  if array.include?(s)
    puts "There is already the word you are adding in the dictionary\nTry searching for it with the option sub strings"
  else
    puts "The word: #{s} is added in the dictionary"
    array << s 
  end
end

def delete(s, array)
  s = s.downcase
  
  if array.include?(s)
    puts "The word: #{s} is deleted in the dictionary"
    array.delete(s)
    array
  else
    puts "No words found"
  end
end

loop do 
  puts "Choose:\n1) Find sub strings\n2) Add a word in the dictionary\n3) Delete a word in the dictionary\n4) Show all words inside the dictionary"

  loop do
    choice = gets.chomp

    case choice
      when "1"  
        puts "Write something"
        string = gets.chomp

        until string =~ /^[a-zA-Z\s!?,.']+$/ do
          puts "Only letters of the alphabet and space"
          string = gets.chomp
        end

        result = sub_string(string, dictionary)

        if result.empty?
          puts "No words found"
        else 
          puts result
        end
        
        break
      when "2"
        puts "Insert the word you want to add in the dictionary\nRemember that adding or deleting a word in the dictionary will only be temporary and will not be saved in the file"
        string = gets.chomp

        until string =~ /^[a-zA-Z]+$/ do
          puts "Only letters of the alphabet"
          string = gets.chomp
        end

        dictionary = add(string, dictionary)
        break
      when "3"
        puts "Insert the word you want to delete in the dictionary\nRemember that adding or deleting a word in the dictionary will only be temporary and will not be saved in the file"
        string = gets.chomp

        until string =~ /^[a-zA-Z]+$/ do
          puts "Only letters of the alphabet"
          string = gets.chomp
        end

        dictionary = delete(string, dictionary)
        
        break
      when "4" 
        puts dictionary

        break
      else
        puts "You can only choose between 1 to 3\nChoose:\n1) Find sub strings\n2) Add a word in the dictionary\n3) Delete a word in the dictionary\n4) Show all words inside the dictionary"
    end
  end

  puts "Do you want to continue using the programme?\nPress any key other than 'n' or enter to continue\n'n' to close"
  again = gets.chomp.downcase

  if again === "n"
    break
  end  
end