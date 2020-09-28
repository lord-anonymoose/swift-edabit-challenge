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
