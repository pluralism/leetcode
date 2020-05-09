var wordBreak = function(s, wordDict) {
    let dp = new Array(s.length + 1).fill().map(_ => []);
    dp[0] = [''];
    for (let i = 1; i <= s.length; i++)
        for (word of wordDict)
            if (i >= word.length && dp[i - word.length].length && s.substring(i - word.length, i) === word) dp[i].push(word);
    return !dp[s.length] ? [] : dfs(dp, s.length, '', []);
};

function dfs(dp, i, s, r) {
    if (i <= 0) return r.push(s.trim());
    for (str of dp[i]) dfs(dp, i - str.length, `${str} ${s}`, r);
    return r;
}
