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

//Divides evenly
func dividesEvenly(_ a: Int, _ b:Int) -> Bool {
	return a % b == 0
}

//Is the Number Less than or Equal to Zero?
func lessThanOrEqualToZero(_ num: Double) -> Bool {
	return num <= 0
}

// Concat two arrays
func concat(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
	return arr1 + arr2
}

//Profitable Gamble
func profitableGamble(_ prob: Float, _ prize: Float, _ pay: Float) -> Bool {
	return prob * prize - pay > 0
}

//Reverse bool
func reverse(_ flip: Bool) -> Bool {
	if flip == true {
		return false
	} else {
		return true
	}
}

//Name greeting!
func helloName(_ name: String) -> String {
	return "Hello \(name)!"
}

//Farm problem
func animals(_ chickens: Int, _ cows: Int, _ pigs: Int) -> Int {
	return chickens * 2 + (cows + pigs) * 4
}

//Reversed array
func reverse(_ arr: [Int]) -> [Int] {
	var result = arr
	if arr != [Int]() {
		for i in 0...arr.count-1 {
			result[arr.count - 1 - i] = arr[i]
		}
	} 
	return result
}

//Return the first element of the array
func getFirstValue(_ array: [Int]) -> Int {
	return array[0]
}

//Check String for spaces
func hasSpaces(_ str: String) -> Bool {
		return str.contains (" ")
}


