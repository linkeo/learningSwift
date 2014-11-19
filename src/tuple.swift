/*

A Program to exercise using tuples. 
This code is operations on complex numbers.

编码完成复数的运算：加减乘除、平方根（取模）、共轭

*/
import Foundation

let a = (re:1.0, im:7.0)
let b = (re:4.0, im:3.0)
var c:(Double,Double) //for addition
var d:(Double,Double) //for subtraction
var e:(Double,Double) //for multiplication
var f:(Double,Double) //for division
var g:Double //for square root
var h:(Double,Double) //for complex conjugation

// for example, addition is given
c = ( a.re+b.re , a.im+b.im )
// TODO complete other operations on complex numbers
d = ( a.re-b.re , a.im-b.im )
e = ( a.re*b.re - a.im*b.im , a.re*b.im + a.im*b.re)
let bottom = b.re*b.re + b.im*b.im
f = ( (a.re*b.re+a.im*b.im)/bottom, (a.im*b.re-a.re*b.im)/bottom )
g = sqrt(a.re*a.re + a.im*a.im)
h = (b.re, -b.im)


// output your result
println("\(a) + \(b) = \(c)")
println("\(a) - \(b) = \(d)")
println("\(a) * \(b) = \(e)")
println("\(a) / \(b) = \(f)")
println("square root of \(a) is \(g)")
println("complex conjugation of \(b) is \(h)")