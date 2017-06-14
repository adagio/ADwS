/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let things: [Any] = [14.5, 5, "hola", false]
for thing in things {
    print(thing)
}
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for thing in things {
    if let integerValue = thing as? Int {
        print("The integer has a value of \(integerValue)")
    }
}
/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let dict: [String: Any] = ["medida": 14.5, "count": 5, "saludo": "saludo", "verdad": false, "calle": "13"]
for kv in dict {
    print("\(kv.key): \(kv.value)")
}

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for kv in dict {
    if let num = kv.value as? Int {
        total += Double(num)
    } else if let num = kv.value as? Double {
        total += num
    }
}
print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for kv in dict {
    if let num = kv.value as? Int {
        total2 += Double(num)
    } else if let num = kv.value as? Double {
        total2 += num
    } else if let str = kv.value as? String {
        if let num = Int(str) {
            total2 += Double(num)
        } else if let num = Double(str) {
            total2 += num
        }
    }
}
print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
