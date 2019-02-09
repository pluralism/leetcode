let maxIncreaseKeepingSkyline = (grid) => {
    let sideSkyline = grid.map(arr => Math.max(...arr));
    let topBottomSkyline = new Array(grid[0].length).fill(0);

    for(let i = 0; i < grid.length; i++) {
        for(let j = 0; j < grid[i].length; j++) {
            topBottomSkyline[j] = Math.max(topBottomSkyline[j], grid[i][j]);
        }
    }

    let heightSum = 0;
    for(let i = 0; i < grid.length; i++) {
        for(let j = 0; j < grid[i].length; j++) {
            if(sideSkyline[i] != grid[i][j] && topBottomSkyline[j] != grid[i][j]) {
                heightSum += Math.min(sideSkyline[i], topBottomSkyline[j]) - grid[i][j];
            }
        }
    }
    return heightSum;
};