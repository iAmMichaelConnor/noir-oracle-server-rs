#[oracle(getSqrt)]
unconstrained fn sqrt(input: Field) -> Field {}

unconstrained fn get_sqrt(input: Field) -> Field {
    sqrt(input)
}

fn main(input: Field) {
    let sqrt = get_sqrt(input);
    assert(sqrt * sqrt == input);
}

#[test]
fn test_main() {
    main(4);
    // Uncomment to make test fail
    // main(1, 1);
}
