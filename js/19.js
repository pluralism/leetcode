var removeNthFromEnd = function(head, n) {
    let p1 = head, p2 = head;
    let count = 0;

    while (p1) {
        p1 = p1.next;
        if (count >= n) p2 = p2.next;
        count++;
    }
    if (p2 == head) {
        head = head.next;
    } else {
        let s = head;
        while (s) {
            if (s.next == p2) {
                s.next = p2.next;
                break;
            }
            s = s.next;
        }
    }
    return head;
};
