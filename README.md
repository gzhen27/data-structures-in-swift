# Data Structures in Swift

- **Stack**: a linear data structure that serves as a collection of elements, LIFO(last in first out).
    - **push**: adds an element to the top of a stack.
    - **pop**: removes the top element of the stack.

        ```
        // usage case:

            -------top of the stack-------
            |C|
            |B|
            |A|
            ------bottom of the stack-----

            The top element on the stack is: C

            Is this stack empty? 
            No, it is not empty

            C is popped from the stack 

            -------top of the stack-------
            |B|
            |A|
            ------bottom of the stack-----

            The top element on the stack is: B

            Is this stack empty? 
            No, it is not empty

            -------top of the stack-------

            ------bottom of the stack-----

            The top element on the stack is: Not Found

            Is this stack empty? 
            Yes, it is empty
        ```
