class SubString
  attr_accessor :dictionary

  def initialize(dictionary)
    @dictionary = dictionary
  end

  def find_sub(string)
    found_subs = {}

    @dictionary.each do |word|
      if string.downcase.include?(word)
        match_count = string.downcase.scan(word).length
        found_subs[word] = match_count
      end
    end
    
    found_subs
  end
end