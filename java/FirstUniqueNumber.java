import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

class FirstUnique {
    Set<Integer> repeated = new HashSet<>();
    LinkedHashSet<Integer> l = new LinkedHashSet<>();

    public FirstUnique(int[] nums) {
        for (int num : nums) add(num);
    }

    public int showFirstUnique() {
        return l.isEmpty() ? -1 : l.iterator().next();
    }

    public void add(int value) {
        if (!repeated.contains(value)) {
            if (l.contains(value)) {
                repeated.add(value);
                l.remove(value);
            } else {
                l.add(value);
            }
        }
    }
}
