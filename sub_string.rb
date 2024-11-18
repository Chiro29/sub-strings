dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_string(s, array)
  s = s.downcase
  words_found = Hash.new(0)
  i = 0
  while i < array.length 
    n = 0
    if s.index(array[i])
      words_found = {array[i] => n + 1}
    end
  end
  words_found
end

puts "Write something"
string = gets.chomp

until string =~ /^[a-zA-Z\s]+$/ do
  puts "Only letters of the alphabelt and space"
  string = gets.chomp
end

sub_string(string, dictionary)