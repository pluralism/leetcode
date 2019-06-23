function getRomanString(num) {
    const mapping = [
        [1000, 'M'],
        [900, 'CM'],
        [500, 'D'],
        [400, 'CD'],
        [100, 'C'],
        [90, 'XC'],
        [50, 'L'],
        [40, 'XL'],
        [10, 'X'],
        [9, 'IX'],
        [5, 'V'],
        [4, 'IV'],
        [1, 'I'],
        [0, 'I']
    ];

    let result = '';
    while(num > 0) {
        for(const [decimal, roman] of mapping) {
            if(decimal <= num) {
                result += roman;
                num -= decimal;
                break;
            }
        }
    }
    return result;
}

/**
 * @param {number} num
 * @return {string}
 */
function intToRoman(num) {
    let result = '';
    let multiplier = 0;
    
    while(num > 0) {
        result = getRomanString((num % 10) * Math.pow(10, multiplier++)) + result;
        num = Math.floor(num / 10);
    }
    return result;
};
