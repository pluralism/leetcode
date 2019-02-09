const permuteRec = (nums, currentSolution, solutions) => {
    if(nums.length === 0) {
        solutions.push([...currentSolution]);
    } else {
        for(let i = 0; i < nums.length; i++) {
            const copy = [...nums];
            copy.splice(i, 1);
            permuteRec(copy, [...currentSolution, nums[i]], solutions);
        }
    }

    return solutions;
};

const permute = (nums) => {
    return permuteRec(nums, [], []);
};