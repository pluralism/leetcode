# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  curNode = head
  while !curNode.nil?
    if !curNode.next.nil? and curNode.val == curNode.next.val
      tmpNode = curNode
      tmpNode = tmpNode.next while !tmpNode.nil? and tmpNode.val == curNode.val
      curNode.next = tmpNode
    end
    curNode = curNode.next
  end
  head
end
