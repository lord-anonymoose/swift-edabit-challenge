// Football points
func footballPoints(_ wins: Int, _ draws: Int, _ losses: Int) -> Int {
	return wins*3 + draws*1
}

// Return something to me!
func giveMeSomething(_ a: String) -> String {
	return "something " + a
}

// Convert hours into seconds
func howManySeconds(_ hours: Int) -> Int {
	return hours*60*60
}

// Return String as Integer
func stringInt(_ txt: String) -> Int {
	return Int(txt)!
}

// Return sum of two numbers
func addition(_ a: Int, _ b: Int) -> Int {
	return a+b
}

//Convert hours and minutes into seconds
func convert(_ hours: Int, _ minutes: Int) -> Int {
	return hours*60*60 + minutes*60
}

//Triangle area
func triArea(_ base: Int, _ height: Int) -> Int {
	return base*height/2
}

//Convert minutes into seconds
func convert(_ minutes: Int) -> Int {
	return minutes*60
}

//Return the next number from integer passed
func addition(_ num: Int) -> Int {
	return num+1
}

//Return the Remainder from Two Numbers
func remainder(_ x: Int, _ y: Int) -> Int {
	var result = x
	if (result < y)
	{
		return result
	} else if (result == y)
	{
		result = 0
		return result
	} else
	{
		while (result >= y)
		{
			result -= y
		}
		return result
	}
}

//Are the numbers equal?
func isEqual(_ num1: Int, _ num2: Int) -> Bool {
	if num1 == num2 {
		return true
	} else {
		return false
	}
}

//Check if an Integer is Divisible By Five
func divisibleByFive(_ num: Int) -> Bool {
	if num % 5 == 0 {
		return true
	} else {
		return false
	}
}

//Concatenate First and Last Name into One String
func concatName(_ firstName: String, _ lastName: String) -> String {
	return lastName + ", " + firstName
}

//Multiple of 100
func divisible(_ num: Int) -> Bool {
	if num % 100 == 0 {
		return true
	} else {
		return false
	}
}




