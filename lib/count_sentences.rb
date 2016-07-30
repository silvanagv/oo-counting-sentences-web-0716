require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    array = self.split(". ")
    binding.pry
    array.length.times do |x|
      if array[x].include?("!")
        array[x] = array[x].split("!")
      elsif array[x].include?("?")
        array[x] = array[x].split("?")
      end
    end
        array.flatten.count
  end
end
