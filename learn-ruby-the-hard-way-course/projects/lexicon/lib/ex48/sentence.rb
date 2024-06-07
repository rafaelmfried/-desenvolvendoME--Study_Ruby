class Sentence
  def initialize(subject = ['noun', 'player'], verb, obj)
      @subject = subject[1]
      @verb = verb[1]
      @object = obj[1]
  end

  attr_reader :subject
  attr_reader :verb
  attr_reader :object
end