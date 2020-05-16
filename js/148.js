/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var sortList = function(head) {
    if (!head || !head.next) return head;
    let middle = getMiddleNode(head);
    let postMiddle = middle.next;
    middle.next = null;
    const left = sortList(head);
    const right = sortList(postMiddle);
    return merge(left, right);
};

function merge(left, right) {
    let dummy = new ListNode(-1);
    const newHead = dummy;
    
    let l = left;
    let r = right;
    while (l && r) {
        if (l.val <= r.val) {
            dummy.next = l;
            l = l.next;
        } else {
            dummy.next = r;
            r = r.next;
        }
        dummy = dummy.next;
    }
    dummy.next = l || r;

    return newHead.next;
}

function getMiddleNode(head) {
    let slow = head;
    let fast = head;

    while (fast.next && fast.next.next) {
        slow = slow.next;
        fast = fast.next.next;
    }

    return slow;
}
