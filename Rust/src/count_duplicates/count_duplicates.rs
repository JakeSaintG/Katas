// Codewars

/*===================================================================================
Write a function that will return the count of distinct case-insensitive alphabetic characters 
and numeric digits that occur more than once in the input string. The input string can be 
assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
===================================================================================*/

pub fn count_duplicates<'a>(text: &str) -> u32 {
    // text.to_lowercase().split("").collect::<Vec<&str>>();

    let mut s = text.to_lowercase()
        .chars()
        .into_iter()
        .map(|x| text
            .chars()
            .into_iter().map(move |y| y == x));
        // .collect();


    println!( "{:?}", s);


    return 2;
}

/*
    Notes:

*/

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_abcde() {
        assert_eq!(count_duplicates("abcde"), 0);
    }
    
    #[test]
    fn test_abcdea() {
        assert_eq!(count_duplicates("abcdea"), 1);
    }
    
    #[test]
    fn test_indivisibility() {
        assert_eq!(count_duplicates("indivisibility"), 1);
    }
}
