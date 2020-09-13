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

let numbers = [Int](2...7)
print(numbers)

//1.For-in
for num in numbers {
    print(num)
}

//2.For-each
numbers.forEach { (num) in
    if num == 3 {
        //2.1 无法使用break或continue跳出循环
//        continue
//        break
        //2.2 使用return只能退出当前这次循环的执行体
        return
    }
    print(num)
}

//3.使用数组的enumerated()方法，可以同时得到索引和值
for (index, num) in numbers.enumerated() {
    print(index, num)
}

//4.使用Iterator
var numIterator = numbers.makeIterator()
while let num = numIterator.next() {
    print(num)
}

//数组的索引

//1. startIndex 返回第一个元素的位置，对于数组来说，永远都是0；
print(numbers.startIndex)

//2. endIndex 返回最后一个元素索引+1的位置，对于数组来说，等同于count；
print(numbers.endIndex)

//3. 如果数组为空，startIndex 等于 endIndex；
var blankArr = [Int]()
print(blankArr)
print(blankArr.startIndex)
print(blankArr.endIndex)

//4. indices 获取数组的索引区间
for i in numbers.indices {
    print(i, numbers[i] * 10)
}

