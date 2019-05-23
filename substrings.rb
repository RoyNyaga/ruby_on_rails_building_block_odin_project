def substrings(phrase, dictionary)
  a = phrase.delete("?").delete("!").delete("'").delete(",").downcase.split(" ")
  count, array, count = 0,[],0
  for elements in a
    # element = elements
    for word in dictionary
      count += 1 if elements == word
    end
    array << [elements,count]
    count = 0
  end
  return array.to_h
end
dictionary = ["below","howdy","howdy","sit","sit","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
