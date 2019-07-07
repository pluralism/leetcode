/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var swapPairs = function(head) {
    if (!head || !head.next) {
        return head;
    }
    const dummy = new ListNode(-1);
    dummy.next = head.next;

    const proxNext = head.next.next;
    head.next.next = head;
    head.next = proxNext;
    head = dummy.next.next;

    while(head && head.next && head.next.next) {
        const next3 = head.next;
        const next4 = head.next.next;
        head.next = head.next.next;
        next3.next = next4.next;
        head.next.next = next3;
        head = next3;
    }

    return dummy.next;
};
