public class MinStack {
    final Stack<Integer> stack = new Stack<>();
    final Stack<Integer> minStack = new Stack<>();
    
    public MinStack() {}

    public void push(int x) {
        stack.push(x);
        if (minStack.isEmpty()) {
            minStack.push(x);
        } else {
            if (x <= minStack.peek()) {
                minStack.push(x);
            }
        }
    }

    public void pop() {
        final int currentMinValue = minStack.peek();
        final int stackTopValue = stack.peek();
        if (stackTopValue == currentMinValue) {
            minStack.pop();
        }
        stack.pop();
    }

    public int top() {
        return stack.peek();
    }

    public int getMin() {
        return minStack.peek();
    }
}
