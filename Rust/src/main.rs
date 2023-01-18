mod descending_order;
mod banjo;
mod dna_to_rna;
mod get_age;
mod break_chocolate;

// Used for quick answer checks, more thorough evaluations in tests in mods

fn main() {

    // println!("{}", banjo::banjo::are_you_playing_banjo("JakeSaintG"));
    // println!("{}", descending_order::descending_order::descending_order(123456789));
    // println!("{}", dna_to_rna::dna_to_rna::dna_to_rna("TTTT"));
    // println!("{}", get_age::get_age::get_age("7 years old"));

    println!("{}", break_chocolate::break_chocolate::break_chocolate(2, 3));
}
