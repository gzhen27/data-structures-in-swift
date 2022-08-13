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


