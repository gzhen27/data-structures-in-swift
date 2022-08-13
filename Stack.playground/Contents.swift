import UIKit

public struct Stack<Element> {
    // main storage for the stack, set private to limit the access.
    private var container: [Element] = []
    
    public init() {}
    // MARK: - main operations
    
    /**
     adds an element to the top of a stack.
     */
    public mutating func push(_ element: Element) {
        container.append(element)
    }
    
    /**
     removes the top element of the stack.
     */
    public mutating func pop() -> Element? {
        container.popLast()
    }
    
    /**
     get the last element of the Stack without removing it
     */
    public mutating func peek() -> Element? {
        container.last
    }
    
    public var isEmpty: Bool {
        container.count == 0
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        """
        -------top of the stack-------
        \(container.map { "|\($0)|" }.reversed().joined(separator: "\n"))
        ------bottom of the stack-----
        """
    }
}

// usage case:
var stack = Stack<String>()
stack.push("A")
stack.push("B")
stack.push("C")

print(stack)
print("\n The top element on the stack is: \(stack.peek() ?? "Not Found")")
print("\n Is this stack empty? \n \(stack.isEmpty ? "Yes, it is empty" : "No, it is not empty")")

if let last = stack.pop() {
    assert("C" == last)
    print("\n \(last) is popped from the stack \n")
}

print(stack)
print("\n The top element on the stack is: \(stack.peek() ?? "Not Found")")
print("\n Is this stack empty? \n \(stack.isEmpty ? "Yes, it is empty" : "No, it is not empty")\n")

while stack.pop() != nil {}

print(stack)
print("\n The top element on the stack is: \(stack.peek() ?? "Not Found")")
print("\n Is this stack empty? \n \(stack.isEmpty ? "Yes, it is empty" : "No, it is not empty")")
