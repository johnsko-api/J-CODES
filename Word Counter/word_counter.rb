#require 'pry'
def word_count(sentence)


  counts = {}
  words = sentence.downcase.gsub(/[^a-z0-9\s\--]/,' ').split
  stop_words = File.open('stop_words.txt').read.split

words = words.delete_if {|useless| stop_words.include?(useless)}
  #ran through the array of words to see if it included
  # the useless or stop_words to delete it

 n = ARGV[1].to_i

  words.each do |word|
    unless counts.has_key?(word)
      counts[word] = 0
    end
      counts[word] += 1
  end


  #line of code is going through all the split words
  #then it is assigning a key to each word
  #if word appears again then the adds 1 to value

counts = counts.sort_by {|k,v| v}.reverse
counts = counts[0..n-1]

  counts.each do |list|
    puts list.join(' : ')
  end
#  binding.pry
  return
end

file = File.open(ARGV[0]).read
puts word_count(file)
