func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

func calculateAreaFromString(width: String, height: String) -> Double? {
    guard let widthDouble = Double(width), let heightDouble = Double(height) else {
        return nil // Handle invalid input
    }
    return calculateArea(width: widthDouble, height: heightDouble)
}

if let area = calculateAreaFromString(width: "10", height: "20") {
    print(area) // Output: 200.0
} else {
    print("Invalid input")
}

//Alternative solution using optional parameters
func calculateAreaWithOptional(width: Double?, height: Double?) -> Double? {
    guard let width = width, let height = height else { return nil }
    return width * height
}

let area2 = calculateAreaWithOptional(width: 10, height: 20) //200.0
let area3 = calculateAreaWithOptional(width: "10" as? Double, height: "20" as? Double)//nil
