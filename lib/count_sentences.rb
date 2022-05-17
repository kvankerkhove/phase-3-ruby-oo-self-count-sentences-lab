require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self.split(/\.|\?|!/).filter{|sentence| !sentence.empty?}.length
  end
end

puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences