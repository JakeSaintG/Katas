// Codewars

/*===================================================================================
Return a child's age (0-9) as an integer. Assume the test input string is always a valid 
string. For example, the test input may be "1 year old" or "5 years old". The first 
character in the string is always a number.
===================================================================================*/

pub fn get_age(age: &str) -> u32 {
    return age.chars().next().unwrap().to_digit(10).unwrap();
}

/*
    Notes:

*/

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn basic_tests() {
        assert_eq!(get_age("2 years old"), 2);
        assert_eq!(get_age("4 years old"), 4);
        assert_eq!(get_age("5 years old"), 5);
        assert_eq!(get_age("7 years old"), 7);
    }
}
