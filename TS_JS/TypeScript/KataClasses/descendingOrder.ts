// Codewars

export function descendingOrder(n: number): number {
  return Array.from(String(n), Number)
    .sort()
    .reverse()
    .reduce((i, digit) => i * 10 + digit);

    //return parseInt(n.toString().split('').sort().reverse().join(''));
        // Would also work.
        // TODO: What's more expensive? Parsing an int or calculating it like I did.
            // I imagine that parsing is more expensive with smaller inputs and calculating is with massive inputs
}
