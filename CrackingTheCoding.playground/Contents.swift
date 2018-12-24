import Foundation

var str = "Hello, playground"

//Problem :- Create all permutations from string
//Solution:-
extension String {
    subscript (bounds: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }
    
    subscript (bounds: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
}


func permutations(_ prefix: String,_ str: String){
    let length = str.count
    if length == 0 {
        print(prefix)
    }else {
        for index in 0..<str.count{
            permutations(prefix + str[index..<index + 1],str[0..<index] + str[index + 1..<length])
        }
    }
}
permutations("","abc")
