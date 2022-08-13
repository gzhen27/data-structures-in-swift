import UIKit

public struct Stack<Element> {
    // main storage for the stack, set private to limit the access.
    private var container: [Element] = []
    
    public init() {}
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


