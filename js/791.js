/**
 * @param {string} S
 * @param {string} T
 * @return {string}
 */
let customSortString = function(S, T) {
    let str = "";
    let usedIndexes = new Set();
    
    for(let ch of S) {
        let index = T.indexOf(ch);
        while(index > -1) {
            str += T[index];
            usedIndexes.add(index);
            index = T.indexOf(ch, index + 1);
        }
    }

    for(let i = 0; i < T.length; i++) {
        if(!usedIndexes.has(i)) {
            str += T[i];
        }
    }

    return str;
};