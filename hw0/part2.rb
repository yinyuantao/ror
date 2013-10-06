def hello(name)
	return "Hello, #{name}"
end

puts hello("david")

def starts_with_consonant?(s)
		if s.length ==0
			return false
		end
    first_letter = s[0, 1].upcase
    consonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
    consonants.each do |x|
        if x == first_letter
            return true
        end
    end
    return false
end

puts starts_with_consonant?('#123')
puts starts_with_consonant?('bsian')

    
def binary_multiple_of_4?(s)
  if(s =~ /^[01]*1[01]*00$/)
		return true
	else
		return false
	end
end

p binary_multiple_of_4? "1100"
p binary_multiple_of_4? "HW1000"
p binary_multiple_of_4? ("0b100")
