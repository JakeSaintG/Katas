// Codewars (Vanilla JS Kata done in TS)

/*===================================================================================================
    Your task is to write a function maskify, which changes all but the last four characters into '#'.
===================================================================================================*/

export function maskify(cc: string): string
{
    let ccArray = cc.split('');
    let maskedList: string[] = [];

    for (let i = 0; i < ccArray.length; i++) {
        if (i < (ccArray.length - 4)) {
            maskedList.push("#");
        } else {
            maskedList.push(ccArray[i].toString());
        }
    }

    return maskedList.join("");
}

export function maskify2ElectricBoogaloo(cc: string): string
{
    return cc.replace(/.(?=.{4})/g, "#");
}