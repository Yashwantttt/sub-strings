def substrings(word,array)
  if word.split.length == 1 
    match = array.select do |array_element|
      word.include?(array_element)
    end
    final_hash = match.reduce(Hash.new(0)) do |result,same|
      result[same] += 1
      result
    end
    print final_hash
    
  else
    words = word.split
    words.each do |word|
      match = array.select do |array_element|
        word.include?(array_element)
      end
      final_hash = match.reduce(Hash.new(0)) do |result,same|
        result[same] += 1
        result
      end
      print final_hash
    end
  end
end

array1 = ["Hello" ,"guys","guys","guy"]

substrings("Hello guys",array1)


#to make it case insensitive ...we just create 2 new variable ...one of array and one of word then 
#downcase it