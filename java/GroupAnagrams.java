import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

class Solution {
    public List<List<String>> groupAnagrams(String[] strs) {
        HashMap<String, List<String>> groups = new HashMap<>();
        for (String str : strs) {
            char[] ar = str.toCharArray();
            Arrays.sort(ar);
            String key = new String(ar);
            if (!groups.containsKey(key)) {
                groups.put(key, List.of(str));
            } else {
                groups.put(key, Stream.of(groups.get(key), List.of(str))
                        .flatMap(Collection::stream)
                        .collect(Collectors.toList()));
            }
        }
        return new ArrayList<>(groups.values());
    }
}
