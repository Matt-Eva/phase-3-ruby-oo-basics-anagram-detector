# Your code goes here!
class Anagram

    def initialize(word)
        @word = word
    end

    def match(array)
        sorted_word_array = @word.chars.sort
        anagram_array = array.filter do |element|
            sorted_element_array = element.chars.sort
            sorted_element_array == sorted_word_array
            end
        anagram_array
    end
end

listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])