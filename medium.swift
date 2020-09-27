/*
 https://edabit.com/challenge/qGnT7MvqZY98Y9iSb
 Array of Multiples: Create a function that takes two numbers as arguments (num, length) and returns an array of multiples of num up to length.
 */

func arrayOfMultiples(_ num: Int, _ length: Int) -> [Int]
{
    var result = [Int]()
    for i in 1...length
    {
        result.append(num * i)
    }
    return result
}

/*
 https://edabit.com/challenge/FaQ7YBcuWngE7sJeg
 Calculate the Mean: Create a function that takes an array of numbers and returns the mean (average) of all those numbers.
 */

func mean(_ array: [Double]) -> Double
{
    var result:Double = 0.0
    for i in 0...array.count-1 {
        result += array[i]
    }
    result /= Double(array.count)
    result = result*100
    result = result.rounded() / 100
    return result
}

/*
https://edabit.com/challenge/6Xuc5xTkYM7aEPsSc
Scoring System.
 Andy, Ben and Charlotte are playing a board game. The three of them decided to come up with a new scoring system. A player's first initial ("A", "B" or "C") denotes that player scoring a single point. Given a string of capital letters, return an array of the players' scores.

 For instance, if ABBACCCCAC is written when the game is over, then Andy scored 3 points, Ben scored 2 points, and Charlotte scored 5 points, since there are 3 instances of letter A, 2 instances of letter B, and 5 instances of letter C. So the array [3, 2, 5] should be returned.
 */

func calculateScores(_ input: String) -> [Int]
{
    var Andy = 0
    var Ben = 0
    var Charlotte = 0
    let inputArr = Array(input)
    for i in 0...inputArr.count-1
    {
        switch inputArr[i] {
        case "A":
            Andy += 1
        case "B":
            Ben += 1
        case "C":
            Charlotte += 1
        default:
            print("Unknown symbol!")
        }
    }
    return [Andy, Ben, Charlotte]
}
