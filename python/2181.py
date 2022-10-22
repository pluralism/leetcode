class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution(object):
    def mergeNodes(self, head):
        current = head
        head_next = ListNode()
        sum = 0

        while current.next is not None:
            while current.next.val != 0:
                sum += current.val
                current = current.next

            sum += current.val

            if head.val == 0:
                head.val = sum
                head.next = None
                head_next = head
            else:
                head_next.next = ListNode(sum)
                head_next = head_next.next

            sum = 0
            current = current.next
        
        return head