mod descending_order;
mod banjo;

// Used for quick answer checks, more thorough evaluations in tests in mods

fn main() {

    println!("{}", banjo::banjo::are_you_playing_banjo("JakeSaintG"));
    println!("{}", descending_order::descending_order::descending_order(123456789));

}
