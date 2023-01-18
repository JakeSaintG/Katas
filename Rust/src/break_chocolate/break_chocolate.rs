// Codewars

/*===================================================================================
Split the chocolate bar of given dimension n x m into small squares. Each square is of size 1x1 and unbreakable.

Implement a function that will return minimum number of breaks needed.

Ex: bar of size 2 x 1 can split into squares in just one break; two breaks for size 3 x 1
If input data is invalid you should return 0. Input will always be a non-negative integer.

===================================================================================*/

pub fn break_chocolate(n: u32, m: u32) -> u64 {
    if m == 0 || n == 0 {
        return 0;
    }

    return (n as u64 - 1) + ((m as u64 - 1) * n as u64);
}

/*
    Notes:

*/

#[cfg(test)]
mod tests {
    use super::break_chocolate;
    fn dotest(n: u32, m: u32, expected: u64) {
        let actual = break_chocolate(n, m);
        assert!(
            actual == expected,
            "With n = {n}, m = {m}\nExpected {expected} but got {actual}"
        )
    }

    #[test]
    fn fixed_tests() {
        dotest(5, 5, 24);
        dotest(7, 4, 27);
        dotest(1, 1, 0);
        dotest(0, 0, 0);
        dotest(6, 1, 5);
    }
}
