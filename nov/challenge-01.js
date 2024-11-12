/**
 * Problem Statement:
 * You are given a string s consisting of the following characters: '(', ')', '{', '}', '[' and ']'.
 *
 * The input string s is valid if and only if:
 * 1. Every open bracket is closed by the same type of close bracket.
 * 2. Open brackets are closed in the correct order.
 * 3. Every close bracket has a corresponding open bracket of the same type.
 *
 * Return true if s is a valid string, and false otherwise.
 */

class Solution {
    /**
     * @param {string} s
     * @return {boolean}
     */

    isValid(s) {
        // Arrays to store open and close bracket types
        const openChars = ["(", "{", "["];
        const closeChars = [")", "}", "]"];
        const chars = []; // Stack to keep track of open brackets

        // Iterate through the string to check each character
        for (let char of s) {
            // If the character is an open bracket, push it to the stack
            if (openChars.includes(char)) {
                chars.push(char);
            }

            // If the character is a close bracket and the stack is not empty
            if (closeChars.includes(char) && chars.length > 0) {
                // Check if the top of the stack matches the corresponding open bracket
                const openIndex = closeChars.indexOf(char);
                if (openChars[openIndex] === chars[chars.length - 1]) {
                    // If they match, pop the top open bracket from the stack
                    chars.pop();
                } else {
                    // If they don't match, return false (invalid string)
                    return false;
                }
            }
        }

        // Return true if all brackets are properly closed and the stack is empty
        return chars.length === 0;
    }
}
