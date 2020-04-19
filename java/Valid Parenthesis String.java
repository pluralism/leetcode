import java.util.Stack;

class Solution {
    public boolean checkValidString(String s) {
        final Stack<Integer> parenthesis = new Stack<>();
        final Stack<Integer> stars = new Stack<>();
        for (int i = 0; i < s.length(); i++) {
            switch (s.charAt(i)) {
                case '*': stars.push(i); break;
                case '(': parenthesis.push(i); break;
                case ')':
                    if (!parenthesis.isEmpty()) {
                        parenthesis.pop();
                    } else if (!stars.isEmpty()) {
                        stars.pop();
                    } else {
                        return false;
                    }
                break;
                default: break;
            }
        }

        while (!stars.isEmpty() && !parenthesis.isEmpty()) {
            if (stars.peek() > parenthesis.peek()) {
                stars.pop();
                parenthesis.pop();
            } else {
                return false;
            }
        }
        return parenthesis.isEmpty();
    }
}
