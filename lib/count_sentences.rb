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
    sentences = self.split(/[.?!]/).reject {|sentence| sentence.empty?}.size
    sentences.count
    #binding.pry
  end
end