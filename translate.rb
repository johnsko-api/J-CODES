def translate(sentence)
  words = sentence.downcase.split.map! do |word|
    if word.start_with?('a','e','i','o','u')
      word = word << 'way'

    else
      word = word.partition(/[aeiouy]/).rotate!.push('ay').join
      #word.push(word[0]).shift
      #word.push('ay')
      #word = word.join
      #(we could do it like this but we used rotate instead)
    end
  end
  words.join(' ')
end

input = ARGV.join(" ")
puts translate(input)


# .map! (changes the original array to the new array)
