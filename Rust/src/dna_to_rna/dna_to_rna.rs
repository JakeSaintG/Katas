// Codewars

/*===================================================================================
Create a function which translates a given DNA string into RNA. Thymine -> Uracil
===================================================================================*/

pub fn dna_to_rna(dna: &str) -> String {
    return dna.replace('T', "U");
}

/*
    Notes:
    Little too easy...
*/

#[cfg(test)]
mod tests {
    use super::dna_to_rna;

    #[test]
    fn returns_expected() {
        assert_eq!(dna_to_rna("TTTT"), "UUUU");
        assert_eq!(dna_to_rna("GCAT"), "GCAU");
    }
}
