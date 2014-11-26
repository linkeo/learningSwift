import Foundation
import CoreFoundation

// function definition
func integral(#range:(from:Double, to:Double), #unit: Double, function:(Double)->Double) -> Double? {
    if unit <= 0.0 { return nil }
    var rangeLength = range.to - range.from
    if rangeLength == 0.0 { return nil }
    let direction = rangeLength > 0.0 ? 1.0 : -1.0
    if rangeLength * direction < unit { return nil }
    let moveUnit = unit * direction
    
    var cumulation = 0.0
    if direction > 0.0 {
        for var x = range.from; x < range.to ; x += moveUnit {
            cumulation += function(x) * moveUnit
        }
    } else {
        for var x = range.from; x > range.to ; x += moveUnit {
            cumulation += function(x) * moveUnit
        }
    }
    
    return cumulation
}


// usage

let range = (from:0.0, to: 1.0)

let timeA = CFAbsoluteTimeGetCurrent() // remember the start time

let functionDescription = "y=x^2+x+1/6"
let result = integral(range:range, unit:1e-7) {
    (x: Double) -> Double in
    return x*x + x + 1.0/6.0
}

let timeB = CFAbsoluteTimeGetCurrent() // remember the end time

if let integral = result {
    println("The integral of \(functionDescription) in \(range) equals \(integral - integral%1e-6)")
} else {
    println("Can't resolve that integral.")
}
let duration = timeB-timeA
println("It costs \(duration - duration%1e-3) second(s) to work out.")