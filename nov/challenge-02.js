/**
 * Design a stack class that supports the push, pop, top, and getMin operations.
 *
 * MinStack() initializes the stack object.
 * void push(int val) pushes the element val onto the stack.
 * void pop() removes the element on the top of the stack.
 * int top() gets the top element of the stack.
 * int getMin() retrieves the minimum element in the stack.
 *
 * Each function should run in O(1) time.
 */

class MinStack {
    constructor() {
        this.stack = [];
    }

    /**
     * @param {number} val
     * @return {void}
     */
    push(val) {
        const validVal = isNaN(val) ? null : val;
        this.stack.push(validVal);

        return null;
    }

    /**
     * @return {void}
     */
    pop() {
        this.stack.pop();

        return null;
    }

    /**
     * @return {number}
     */
    top() {
        return this.stack[this.stack.length - 1];
    }

    /**
     * @return {number}
     */
    getMin() {
        let minValue = this.stack[0];

        this.stack.forEach((val) => {
            if (val < minValue)
                minValue = val;
        })

        return minValue;
    }
}
