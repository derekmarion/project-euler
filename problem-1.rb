#This ruby script finds the sum of all the multiples of a number below a limit
#Derek Marion
#20171011
#
#Take user input for multiple and limit variables 
print "Enter a multiple:"
$userMultiple = gets.chomp.to_i
print "Enter an upper limit:"
$userLimit = gets.chomp.to_i

#define function that performs the math
def calculate(multiple, limit) 
	multiples = []
	i = 0
	while i < limit 
		multiples.push(i)
		i += multiple
	end
	sum = 0
	i = 0
	while i < multiples.length 
		sum += multiples[i]
		i += 1
	end
	print "The sum of all multiples of " + $userMultiple.to_s + " below " + $userLimit.to_s +  " is " + sum.to_s
end

#call function
calculate($userMultiple,$userLimit)

