//
//  struct.swift
//  
//  定义一个复数的结构体，使得以下代码可以通过编译并得到正确的结果
//
//  Created by 林康 on 14/11/15.
//
//

import Foundation

struct Complex {
    // TODO complete the structure here
    var re:Double
	var im:Double
	func toTuple() -> (Double,Double) {
		return (re,im)
	}
	func conjugate() -> Complex {
		return Complex(re:self.re,im:-self.im)
	}
}
// TODO maybe additional functions here
func add(a:Complex, b:Complex) -> Complex {
	return Complex(re:a.re+b.re,im:a.im+b.im)
}

// my code to be supported
let a = Complex(re:3.0, im:4.0)
let tupleA:(Double,Double) = a.toTuple()
println("a = \(tupleA)")

let b = Complex(re:4.0, im:3.0)
let c:Complex = add(a,b)
println("\(a.toTuple()) + \(b.toTuple()) = \(c.toTuple())")

let d:Complex = b.conjugate()
println("The complex conjugation of \(b.toTuple()) is \(d.toTuple())")
