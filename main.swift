
func sort(ArrayFirst: [String]) -> [String] {
    var array = ArrayFirst
    var swaps = 0
    var pass = 0
    var totswap = 0
//    print("Pass: \(pass), Swaps: \(swaps)/\(totswap), Array: \(array)")
    pass += 1
    for i in 0..<array.count - 1 {   
        var smallest = i
        for j in i + 1..<array.count {
            if array[smallest] > array[j] {
                smallest = j
            }
        }
        if i != smallest {
            swaps = 0
            let tempW1 = array[i]
            let tempW2 = array[smallest]
            array[i] = tempW2
            array[smallest] = tempW1
            swaps += 1
            totswap += 1

            
        }
        
   //     print("Pass: \(pass), Swaps: \(swaps)/\(pass), Array: \(array)")
        pass += 1
              
    }
    return array
}
var y : [String] = []
print("Type A word then enter to add to a list for them to be sorted")
print("Type Ctrl-D to exit")
var line : String?
repeat {
    //    print("Please Enter A Random word:")
    line = readLine()
    if line != nil {
        y.insert(line!, at: 0)


    }
} while line != nil

let x = sort(ArrayFirst: y )

print(x)
