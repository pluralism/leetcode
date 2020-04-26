import java.util.HashMap;
import java.util.Map;

public class LRUCache {
    static class LRUNode {
        final int key;
        int value;
        LRUNode left;
        LRUNode right;
        public LRUNode(int key, int value) {
            this.key = key;
            this.value = value;
            this.left = null;
            this.right = null;
        }
    }

    final int capacity;
    final Map<Integer, LRUNode> cache = new HashMap<>();
    LRUNode head;
    LRUNode tail;

    public LRUCache(int capacity) {
        this.capacity = capacity;
    }

    public int get(int key) {
        if (!cache.containsKey(key)) return -1;
        moveToHead(key);
        return head.value;
    }

    public void put(int key, int value) {
        if (cache.containsKey(key)) {
            moveToHead(key);
            head.value = value;
            return;
        }

        if (cache.size() >= capacity) {
            if (head == tail) {
                cache.remove(head.key);
                head = new LRUNode(key, value);
                tail = head;
                cache.put(key, head);
                return;
            }
            updateTailAndCache();
        }
        updateHeadAndCache(key, value);
    }

    private void moveToHead(final int key) {
        final LRUNode newHead = cache.get(key);
        if (newHead.left != null && newHead.right != null) {
            newHead.right.left = newHead.left;
            newHead.left.right = newHead.right;

            newHead.left = null;
            newHead.right = head;
            head.left = newHead;
            head = newHead;
        } else if (head != tail && newHead == tail) {
            tail = newHead.left;
            newHead.left.right = null;
            newHead.left = null;
            newHead.right = head;
            head.left = newHead;
            head = newHead;
        }
    }

    private void updateTailAndCache() {
        final LRUNode nextTail = tail.left;
        nextTail.right = null;
        cache.remove(tail.key);
        tail = nextTail;
    }

    private void updateHeadAndCache(int key, int value) {
        if (head == null) {
            head = new LRUNode(key, value);
            tail = head;
            cache.put(key, head);
            return;
        }
        final LRUNode newHead = new LRUNode(key, value);
        newHead.right = head;
        head.left = newHead;
        head = newHead;
        cache.put(key, newHead);
    }
}
