export function spinWords(words: string): string {
    return words
        .split(' ')
        .map(e => e.length > 4 ? e.split('').reverse().join('') : e)
        .join(" ");
}