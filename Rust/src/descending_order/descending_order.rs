pub fn descending_order(x: u64) -> u64 {
    
    
    // let mut bytes = Vec::with_capacity(4 * x.len());

    // for value in x {
    //     bytes.extend(&value.to_be_bytes());
    // }

    // println!(bytes);

    return x;
}

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
