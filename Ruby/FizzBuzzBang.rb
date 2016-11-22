for num in 1...100
	result = ""
	if num % 3 == 0
		result << "Fizz"
	end
	if num % 5 == 0
		result << "Buzz"
	end
	if num.to_s[0]=='1'
		result << "Bang"
	end
	if result == ""
		puts num  
	else
        puts result
    end
end
