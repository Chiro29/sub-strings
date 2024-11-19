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