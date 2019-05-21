def caesar_cipher(statement,shift_value)
  changed_string = ""
  length_statement = statement.length
  small_letters = [
    "a","b","c","d","e",
    "f","g","h","i","j",
    "k","l","m","n","o",
    "p","q","r","s","t",
    "u","v","w","x","y",
    "z"
  ]
  capital_letters = small_letters.join(",").upcase.split(",")
  for i in 0..length_statement
    if small_letters.include?statement[i]
      actual_position = small_letters.index(statement[i])
      if actual_position > 20
        index_left = 25 - actual_position
        reset_position = 5-index_left
        changed_string += small_letters[reset_position-1]
      else
        changed_position = actual_position + shift_value
        changed_string += small_letters[changed_position].to_s
      end
    elsif capital_letters.include?statement[i]
      actual_position = capital_letters.index(statement[i])
      if actual_position > 20
        index_left = 25 - actual_position
        reset_position = 5-index_left
        changed_string += capital_letters[reset_position-1]
      else
          changed_position = actual_position + shift_value
          changed_string += capital_letters[changed_position].to_s
      end
    else
      changed_string += statement[i].to_s
    end
  end
  return changed_string
end
puts caesar_cipher("What a hello!", 5)
