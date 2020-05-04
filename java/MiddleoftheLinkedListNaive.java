/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode middleNode(ListNode head) {
        int size = 0;
        ListNode current = head;
        while (current != null) {
            current = current.next;
            size++;
        }
        current = head;
        for (int i = 1; i <= (size >> 1); i++) current = current.next;
        return current;
    }
}
