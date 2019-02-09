function combinationSumRec(candidates, target, currentSolution, solutions, startIndex = 0) {
    const sum = currentSolution.reduce((acc, val) => acc + val, 0);

    if(sum === target) {
        solutions.push(currentSolution);
    } else if(sum < target) {
        for(let i = startIndex; i < candidates.length && candidates[i] <= target; i++) {
            combinationSumRec(candidates, target, [...currentSolution, candidates[i]], solutions, i);
        }
    }

    return solutions;
}

function combinationSum(candidates, target) {
    candidates.sort((a, b) => a - b);
    return combinationSumRec(candidates, target, [], []);
}