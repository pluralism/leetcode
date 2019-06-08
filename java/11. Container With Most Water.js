/**
 * @param {number[]} height
 * @return {number}
 */
function maxArea(height) {
    let maxArea = 0;
    let L = 0;
    let R = height.length - 1;

    while (L < R) {
        maxArea = Math.max(maxArea, (R - L) * Math.min(height[L], height[R]));
        if (height[L] < height[R]) {
            L++;
        } else {
            R--;
        }
    }

    return maxArea;
}
