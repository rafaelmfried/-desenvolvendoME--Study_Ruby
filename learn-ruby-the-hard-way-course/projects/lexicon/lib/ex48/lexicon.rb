class Lexicon

  LEXICON = {
    'direction' =>  ['north', 'south', 'east'],
    'verb' => ['go', 'kill', 'eat'],
    'stop' => ['the', 'in', 'of'],
    'noun' => ['bear', 'princess', 'castle'],
  }

  def self.scan(sentence)
    words = sentence.split
    result = []
    words.each do |word|
      
      category = category_indetifier(word)
      word = category == 'number' ? word.to_i : word
      result << [category, word]
    end
    result
  end

  def self.category_indetifier(word)
    return 'number' if Integer(word) rescue
    LEXICON.each do |key, values|
      return key if values.include?(word.downcase)
    end
    'error'
  end
end