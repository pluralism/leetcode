function deckRevealedIncreasing(deck) {
    deck.sort((a, b) => { return a - b; });
    const result = [deck[deck.length - 1]];

    for(let i = deck.length - 2; i >= 0; i--) {
        result.unshift(result.pop());
        result.unshift(deck[i]);
    }

    return result;
}