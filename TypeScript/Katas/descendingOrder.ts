// Codewars

/*==============================================================================
    Your task is to make a function that can take any non-negative integer as
    an argument and return it with its digits in descending order. Essentially,
    rearrange the digits to create the highest possible number.
==============================================================================*/

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
