def translate(s)
  vowels = ['a', 'e', 'i', 'o', 'u']
  new_s = []
  s.split.each do |w|
    i = 0
    cons = ""
    until vowels.include?(w[i])
      cons = cons + w[i]
      i += 1
    end
    if cons.empty?
      new_s.push(w + "ay")
    else
      substr = w.slice! cons
      if cons[-1] == 'q' && w[0] == 'u'
        new_s.push(w[1..-1] + cons + "uay")
      else
        new_s.push(w + substr + "ay")
      end
    end
  end
  return new_s.join(' ')
end