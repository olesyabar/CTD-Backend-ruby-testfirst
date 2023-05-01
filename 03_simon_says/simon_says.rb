def echo(w)
  return w.downcase
end

def shout(w)
  return w.upcase
end

def repeat(w, t=2)
  return [w]*t*' '
end

def start_of_word(w, n=1)
  return w[0..n-1]
end

def first_word(s)
  return s.split.first
end

def titleize(s)
  little_words = ["a", "an", "and", "over", "the", "on", "at"]
  new_s = []
  new_s.push(s.split.first.capitalize)
  s.split.drop(1).each do |w|
    if not little_words.include?(w)
      new_s.push(w.capitalize)
    else
      new_s.push(w)
    end
  end
  return new_s.join(' ')
end