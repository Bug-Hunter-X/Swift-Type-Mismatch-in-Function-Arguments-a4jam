func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}

let area = calculateArea(length: 10, width: 5) // Correct usage

let widthString = "5"

// Solution: Convert the String to a Double before calling the function.
if let widthDouble = Double(widthString) {
    let area2 = calculateArea(length: 10, width: widthDouble)
    print(area2) // Output: 50.0
} else {
    print("Invalid width value")
}

// Alternative: Use optional parameters to handle potential errors
func calculateAreaOptional(length: Double, width: String?) -> Double? {
    guard let width = width, let widthDouble = Double(width) else {
        return nil
    }
    return length * widthDouble
}
let area3 = calculateAreaOptional(length: 10, width: "5")
print(area3 ?? 0) // Output: 50.0
let area4 = calculateAreaOptional(length: 10, width: "abc")
print(area4 ?? 0) // Output: 0.0