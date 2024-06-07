require 'test/unit'
require_relative '../lib/ex48/parser'
require_relative '../lib/ex48/parser_error'

class TestParser < Test::Unit::TestCase
  def test_parse_sentence_with_verb_and_direction
    x = Parser.parse_sentence([['verb', 'run'], ['direction', 'north']])
    assert_equal 'player', x.subject
    assert_equal 'run', x.verb
    assert_equal 'north', x.object
  end

  def test_parse_sentence_with_noun_verb_and_noun
    x = Parser.parse_sentence([['noun', 'bear'], ['verb', 'eat'], ['stop', 'the'], ['noun', 'honey']])
    assert_equal 'bear', x.subject
    assert_equal 'eat', x.verb
    assert_equal 'honey', x.object
  end

  def test_parse_sentence_should_fail_without_verb
    assert_raise(Parser::ParserError) do
      Parser.parse_sentence([['noun', 'bear'], ['direction', 'north']])
    end
  end

  def test_parse_sentence_should_fail_without_noun_or_direction
    assert_raise(Parser::ParserError) do
      Parser.parse_sentence([['verb', 'run'], ['stop', 'the']])
    end
  end
end
