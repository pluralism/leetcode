/**
 * @param {string} moves 
 */
function judgeCircle(moves) {
    const costs = {
        'U': 1,
        'D': -1,
        'R': 1,
        'L': -1
    };
    const result = [0, 0];

    for(const char of moves) {
        result[['D', 'U'].includes(char) ? 0 : 1] += costs[char];
    }
    return result[0] === 0 && result[1] === 0;
}
