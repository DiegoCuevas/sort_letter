class Letters
  def initialize
    @word = ""
  end
  def is_uppercase word
    word == word.upcase
  end

  def letter_values array
    number = (1..26).to_a.reverse
    result = array.tally.entries.sort_by{|e| -e[1]}.map.with_index {|e,i| number[i] * e[1]  }.sum
    p result
  end

  def run
    p "Ingrese Palabra"
    @word = gets.chomp
    until is_uppercase(@word)
      puts 'Ingrese una palabra valida'
      @word = gets.chomp
    end
    word_array = @word.split('')
    letter_values(word_array)
  end
end