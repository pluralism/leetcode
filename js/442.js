/**
 * @param {number[]} nums
 * @retuen {number[]} 
 */
const findDuplicates = (nums) => {
    const numsSet = new Set();
    const duplicates = new Set();

    for(let num of nums) {
        if(numsSet.has(num)) {
            duplicates.add(num);
        } else {
            numsSet.add(num);
        }
    }

    return [...duplicates];
};
