require_relative 'parser_error'
require_relative 'sentence'

module Parser
  def self.peek(word_list)
    word_list ? word_list[0] : nil
  end

  def self.match(word_list, expecting)
    if word_list
      word = word_list.shift
      return word if word[0] == expecting
    end
    nil
  end

  def self.skip(word_list, word_type)
    while peek(word_list) == word_type
      match(word_list, word_type)
    end
  end

  def self.parse_verb(word_list)
    skip(word_list, 'stop')
    if peek(word_list) == 'verb'
      return match(word_list, 'verb')
    else
      raise ParserError, "Expected a verb next."
    end
  end

  def self.parse_object(word_list)
    skip(word_list, 'stop')
    next_word = peek(word_list)

    if next_word == 'noun'
      return match(word_list, 'noun')
    elsif next_word == 'direction'
      return match(word_list, 'direction')
    else
      raise ParserError, "Expected a noun or direction next."
    end
  end

  def self.parse_subject(word_list, subj)
    verb = parse_verb(word_list)
    obj = parse_object(word_list)

    Sentence.new(subj, verb[1], obj[1])
  end

  def self.parse_sentence(word_list)
    skip(word_list, 'stop')

    start = peek(word_list)

    if start == 'noun'
      subj = match(word_list, 'noun')
      parse_subject(word_list, subj[1])
    elsif start == 'verb'
      parse_subject(word_list, 'player')
    else
      raise ParserError, "Must start with subject, object or verb not: #{start}"
    end
  end
end
