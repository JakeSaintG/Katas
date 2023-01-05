//Codewars

/*===================================================================================================
    Convert a string to a new string where each character in the new string is "(" if that character
    appears only once in the original string, or ")" if that character appears more than once in the
    original string. Ignore capitalization when determining if a character is a duplicate.
===================================================================================================*/

export function dupEncoder(word: string): string {

    const wordArr = word.toLowerCase().split('');

    return wordArr.map( e => {
        let count = 0;

        wordArr.filter(f => {
            if (f == e) {count++}
        });

        return count > 1 ? ")" : "(";

    }).join('');
}

//Refactored 
export function dupEncoder2ElectricBoogaloo(word: string): string {

    const wordArr = word.toLowerCase().split('');

    return wordArr.map( e => 
        wordArr.filter(f => f === e).length > 1 ? ")" : "("
    ).join('');
}