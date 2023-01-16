// Codewars

pub fn descending_order(x: u64) -> u64 {
    let mut v: Vec<i32> = x
        .to_string()
        .chars()
        .into_iter()
        .map(|x| x.to_string().parse::<i32>().unwrap())
        .collect();

    v.sort();

    let string: String = v.into_iter().rev().map(|x| x.to_string()).collect();
    return string.parse::<u64>().unwrap();
}

/*
    Notes:
    The below solution is pretty similar to how I went about it but much cleaner.

    use std::iter::FromIterator;
    fn descending_order(x: u64) -> u64 {
        let mut result = x.to_string().chars().collect::<Vec<char>>();
        result.sort_by(|a, b| b.cmp(a));
        String::from_iter(result).parse::<u64>().unwrap()
    }
*/

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn returns_expected() {
        assert_eq!(descending_order(0), 0);
        assert_eq!(descending_order(1), 1);
        assert_eq!(descending_order(15), 51);
        assert_eq!(descending_order(1021), 2110);
        assert_eq!(descending_order(123456789), 987654321);
        assert_eq!(descending_order(145263), 654321);
        assert_eq!(descending_order(1254859723), 9875543221);
    }
}
