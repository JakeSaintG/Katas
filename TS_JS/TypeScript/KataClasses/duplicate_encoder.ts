//Code Wars

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