const factorials = (n) => {
    let result = new Map();
    let currentSum = 1;

    for(let i = 1; i <= n; i++) {
        currentSum *= i;
        result.set(i, currentSum);
    }

    return result;
};

const getPermutation = (n, k) => {
    const facts = factorials(n);
    const result = [];
    
    const array = Array.from({ length: n }, (_, i) => i + 1);
    let startIndex = 1;

    while(array.length > 0) {
        if(array.length === 1) {
            result.push(array[0]);
            break;
        }

        const rest = k - startIndex + 1;
        let digit = rest / facts.get(array.length - 1);
        const digitIndex = Math.ceil(digit) - 1;
        digit = array[digitIndex];
        result.push(digit);
        array.splice(digitIndex, 1);

        startIndex += digitIndex * facts.get(array.length);
    }

    return result.join("");
};