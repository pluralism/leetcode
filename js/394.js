/**
 * @param {string} s
 * @return {string}
 */
var decodeString = function(s) {
    return h(s, 0, '', '', 0)[0];
};

function h(s, i, r, c, d) {
    if (i === s.length) return [r + c, i];

    if (!isNaN(s[i])) {
        let mul = s[i];
        while(!isNaN(s[++i])) mul += s[i];
        const [str, strIndex] = h(s, i, r, c, d);
        const ss = c + str.repeat(+mul);
        r += ss;
        const nextIndex = strIndex + 1;
        if (nextIndex < s.length && s[nextIndex] !== ']')
            return h(s, nextIndex, r, d && ss || '', d);
        if (nextIndex === s.length)
            return h(s, nextIndex, r, '', d);
        return [ss, nextIndex];
    } else {
        if (s[i] === '[') return h(s, i + 1, r, '', d + 1);
        if (s[i] !== ']') return h(s, i + 1, r, c + s[i], d);
        return [c, i];
    }
}
