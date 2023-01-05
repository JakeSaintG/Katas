// Codewars

/*===================================================================================
    Create a function which answers the question "Are you playing banjo?".
    If your name starts with the letter "R" or lower case "r", you are playing banjo!
===================================================================================*/

pub fn are_you_playing_banjo(name: &str) -> String {
    let ch = name.to_lowercase().chars().nth(0).unwrap();

    if ch == 'r' {
        return name.to_string() + " plays banjo";
    }
    else {
        return name.to_string() + " does not play banjo";
    }
}

/*
    Notes:

    After learning more about match, and seeing some of the other solutions, I really like this: 

    fn are_you_playing_banjo(name: &str) -> String {
        match name.to_lowercase().starts_with("r") {
            true => format!("{} plays banjo", name),
            false => format!("{} does not play banjo", name)
        }
    }
*/