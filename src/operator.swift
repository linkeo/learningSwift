/*
	操作符的作业:
	1. 用 微元法 计算 y = 3x^2 - 2x + 1 在 [0,1] 的积分
	2. 判断一个整数是否为回文数(形如 2332, 929)
		注:	1. 你并没有事先知道数字的位数, 需要判断
			2. 一位数, 包括0, 也是回文数
			3. 不考虑负数的情况
*/

let range: Double = 1E-8 //微元法划分区间大小
var integral: Double = 0.0     //储存积分结果
//TODO exercise 1


println("第一题:y=3x^2-2x在[0,1]的积分为\(integral)")

let test: UInt = 38783 //要判断的数
var isPassedOpt: Bool? //用于储存判断结果, 是回文数则为true
//TODO exercise


print("第二题:")
if let isPassed = isPassedOpt {
	if isPassed {
		println("\(test)是一个回文数.")
	} else {
		println("\(test)不是一个回文数.")
	}
} else {
	println("尚未进行判断.")
}