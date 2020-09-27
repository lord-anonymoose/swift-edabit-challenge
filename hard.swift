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