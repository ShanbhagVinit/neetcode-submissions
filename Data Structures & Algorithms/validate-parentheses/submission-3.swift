class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character](repeating: "0", count: s.count)
        var index = -1
        for char in s {
            if char == "(" || char == "[" || char == "{" {
                index += 1
                stack[index] = char
            } else if char.isFlowerCloseBracket,
                        verify(array: stack, index: index, for: "{") {
                index = index - 1
            } else if char.isSquareCloseBracket,
                        verify(array: stack, index: index, for: "[") {
                index = index - 1
            } else if char.isCloseBracket,
                        verify(array: stack, index: index, for: "(")  {
                index = index - 1
            } else {
                return false
            }
        }

    return index == -1 ? true : false
    }

    func verify(array: [Character], index: Int, for char: Character) -> Bool {
         guard index >= 0 else { return false }
         return array[index] == char
    }
}

extension Character {
    var isFlowerCloseBracket: Bool {
        return self == "}"
    }

    var isSquareCloseBracket: Bool {
        return self == "]"
    }

    var isCloseBracket: Bool {
        return self == ")"
    }
}