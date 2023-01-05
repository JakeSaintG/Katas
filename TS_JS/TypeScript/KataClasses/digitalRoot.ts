// Codewars

/*==========================================================================================================
Given n, take the sum of the digits of n.
If that value has more than one digit, continue reducing in this way until a single-digit number is produced.
The input will be a non-negative integer.
==========================================================================================================*/

export const digitalRoot = (n: number): number => {
    let numArr = n;

    do {
        numArr = numArr
            .toString()
            .split("")
            .map((e) => parseInt(e))
            .reduce((a, b) => a + b, 0);
    } while (numArr.toString().length > 1);

    return numArr;
};

//Surely the Electric Boogaloo Joke will never get old.
export const digitalRoot2ElectricBoogaloo = (n: number): number => {
    let num = n
        .toString()
        .split("")
        .map((e) => parseInt(e))
        .reduce((a, b) => a + b, 0);

    if (num.toString().length > 1) {
        return digitalRoot2ElectricBoogaloo(num);
    }
    
    return num;
};
