func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}

let area = calculateArea(length: 10, width: 5) // Correct usage

let area2 = calculateArea(length: 10.0, width: "5") // Incorrect usage: mixing Double and String