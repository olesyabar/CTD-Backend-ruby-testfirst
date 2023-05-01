class Book
  attr_reader :title

#  def initialize()
#    @title = ''
#  end

  def title=(title)
    @title = title
    little_words = ["a", "an", "and", "over", "the", "on", "at", "in", "of"]
    new_s = []
    new_s.push(@title.split.first.capitalize)
    title.split.drop(1).each do |w|
      if not little_words.include?(w)
        new_s.push(w.capitalize)
      else
        new_s.push(w)
      end
    end
    @title = new_s.join(' ')
  end
end
