var merge = function(d) {
    if (!d.length) return d;
    let r = [];
    d.sort((a, b) => +a[0] - +b[0]);
    let c = d[0];
    for (let i = 1; i < d.length; i++) {
        if (d[i][0] <= c[1]) c[1] = Math.max(d[i][1], c[1]);
        else {
            r.push(c);
            c = d[i];
        }
    }
    r.push(c);
    return r;
};
