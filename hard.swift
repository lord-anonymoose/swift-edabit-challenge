/*
 https://edabit.com/challenge/buoazAA9iT7sEa6fc
 Spicy Food
 The facts are:

 You've just finished dinner.
 You love spicy food but your friend hates it.
 Given your friend's unfortunate taste preferences, you decide to split the bill only for non-spicy items. You will pay in full for the spicy dishes.

 Given two ordered arrays, one classifying the dishes as spicy vs. non-spicy and the other listing their prices, write a function that outputs an array where the first element is how much you pay and the second element is how much your friend pays.
 */
func billSplit (_ foods: [String], _ prices: [Int]) -> [Double]
{
    var myBill = 0.0
    var friendsBill = 0.0
    for i in 0...foods.count-1
    {
        switch foods[i] {
        case "S":
            myBill += Double(prices[i])
        default:
            myBill += Double(prices[i])/2
            friendsBill += Double(prices[i])/2
        }
    }
    return [myBill, friendsBill]
}

/*
https://edabit.com/challenge/ZBmkoDprB7AMDtJBn
Product of All Other Numbers
You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
Create a function that takes an array of integers and returns an array of the products.
*/
func getProducts(_ arr: [Int]) -> [Int] {
	var temp_arr = arr
	for i in 0...temp_arr.count-1
	{
		temp_arr[i] = 1
	}
	for i in 0...temp_arr.count-1
	{
		for j in 1...arr.count-1
		{
			if j != i 
			{
				temp_arr[i] *= arr[j]
			}
		}
	}

/*
https://edabit.com/challenge/N5hWKCw2ySAK3WjAp
LCM of Two Numbers
Write a function that returns the least common multiple (LCM) of two integers.
*/
func lcm(_ n1: Int, _ n2: Int) -> Int {
	var result:	Int
	var maxElement: Int
	if (n1 > n2)
	{
		maxElement = n1
	} else
	{
		maxElement = n2
	}
	result = maxElement
	while true
	{
		if (result % n1 == 0) && (result % n2 == 0)
		{
			return result
		} else
		{
			result += maxElement
		}
	}
}

/*
Return the Remainder from Two Numbers
There is a single operator in Swift, capable of providing the remainder of a division operation. Two numbers are passed as parameters. The first parameter divided by the second parameter will have a remainder, possibly zero. Return that value.
*/
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

/*
https://edabit.com/challenge/urmQAGrs3nmWM7WuS
Digit Distance
The digit distance between two numbers is the total value of the difference between each pair of digits.
*/
func digitDistance(_ num1: Int, _ num2: Int) -> Int {
	var result = 0
	var first = num1
	var second = num2
	while (first > 0) && (second > 0)
	{
		result += abs(first % 10 - second % 10)
		first -= first % 10
		first /= 10
		second -= second % 10
		second /= 10
	}
	return result
}
	
/*
https://edabit.com/challenge/AfcezoYgqzNPce8yN
Left Side, Right Side
Create two functions:
1. Leftside function: Returns count of numbers strictly smaller than n on the left.
2. Rightside function: Returns count of numbers strictly smaller than n on the right.
*/
func leftSide(_ arr: [Int]) -> [Int] {
	var result = arr
	for i in 0...result.count-1
	{
		result[i] = 0
	}
	for i in 1...result.count-1
	{
		for j in 0...i-1 
		{
			if (arr[j] < arr[i])
			{
				result[i] += 1
			}
		}
	}
	return result
}

func rightSide(_ arr: [Int]) -> [Int] {
	var result = arr
	for i in 0...result.count-1
	{
		result[i] = 0
	}
	
	for i in 0...result.count-2
	{
		for j in i+1...result.count-1 
		{
			if (arr[j] < arr[i])
			{
				result[i] += 1
			}
		}
	}
	return result
}

/*
https://edabit.com/challenge/rD9G2PLDbiCNThBMC
Which Number Is Not like the Others?
Create a function that takes an array of numbers and return the number that's unique.
*/
func unique(_ arr: [Double]) -> Double {
	var firstCount = 0
	var firstNumber = 0.0
	var secondCount = 0
	var secondNumber = 0.0
	
	firstNumber = arr[0]
	firstCount += 1
	
	for i in 1...arr.count - 1
	{
		if arr[i] == firstNumber {
			firstCount += 1
		} else {
			secondNumber = arr[i]
			secondCount += 1
		}
	}
	
	if firstCount == 1 {
		return firstNumber
	} else {
		return secondNumber
	}
	
}
