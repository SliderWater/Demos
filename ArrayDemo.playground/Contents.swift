import UIKit

//初始化数组

//1.字面量
let arr = [1, 2, 3, 4]
let arr1 : [Int] = []

//2.初始化器

//2.1 [类型]()
let arr2 = [Int]()

//2.2 Array<类型>()
let arr3 = Array<String>()

//2.3 Array(repeating: <重复元素>, count: <重复次数>)
let arr4 = Array(repeating: "str", count: 5)

//2.4 [类型](序列)
let arr5 = [Int](0...8)


//数组的遍历方式

let numbers = [Int](1...7)

print(numbers)
