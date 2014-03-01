# Exercise "Ordering your Library"

=begin
	the parameter "rev=false" means that the parameter is optional and, in case the user doesn't pass it, it's false by default
=end
def alphabetize (arr, rev=false)
    arr.sort!
    if (rev==true)
        arr.reverse!
    end
	return arr
end

numbers = [4,6,7,10,3]
puts alphabetize(numbers, true)
