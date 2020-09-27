import Foundation

/*
https://edabit.com/challenge/7h2qcaXo8RrewF7fQ
Transform into an Array with No Duplicates: Create a function that sorts an array and removes all duplicate items from it.
 */

func setify(_ array:[Int]) -> [Int]
{
    var temp_array = array
    var backup: Int
    //Sorting the array
    for _ in 0...temp_array.count-1
    {
        for i in 0...temp_array.count-2
        {
            if temp_array[i] > temp_array[i+1]
            {
                backup = temp_array[i]
                temp_array[i] = temp_array[i+1]
                temp_array[i+1] = backup
            }
        }
    }
    //Removing duplicates
    for i in (0...temp_array.count-2).reversed()
    {
        if temp_array[i] == temp_array[i+1]
        {
            temp_array.remove(at: i+1)
        }
    }
    return temp_array
}

setify([1, 3, 3, 5, 5])
setify([4, 4, 4, 4])
setify([5, 7, 8, 9, 10, 15])
setify([3, 3, 3, 2, 1])

/*
 https://edabit.com/challenge/HqP96guwhTp5wJXpp
Repeating Letters: Create a function that takes a string and returns a string in which each character is repeated once.
 */

func doubleChar(_ input: String) -> String
{
    var output = ""
    for i in 0...input.count-1 {
        output.append(Array(input)[i])
        output.append(Array(input)[i])
    }
    return output
}

doubleChar("Hello")

doubleChar("Hello World!")

/*
 https://edabit.com/challenge/BbGRjPxde2sqiKNzg
 Trace That Matrix: Given a square matrix (i.e. same number of rows as columns), its trace is the sum of the entries in the main diagonal (i.e. the diagonal line from the top left to the bottom right).
 */

func trace(_ array: [[Int]]) -> Int
{
    var result = 0
    for i in 0...array.count-1
    {
        result += array[i][i]
    }
    return result
}

/*
 https://edabit.com/challenge/HuT7rf7ZrzWtRKofY
 How Many Solutions Does This Quadratic Have? A quadratic equation a x² + b x + c = 0 has either 0, 1, or 2 distinct solutions for real values of x. Given a, b and c, you should return the number of solutions to the equation.
 */

func solutions (_ a: Int, _ b: Int, _ c: Int) -> Int
{
    let d = b*b - 4*a*c
    if d > 0
    {
        return 2
    } else if d == 0
    {
        return 1
    } else
    {
        return 0
    }
}



