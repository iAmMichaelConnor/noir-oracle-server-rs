#[oracle(getSqrt)]
unconstrained fn sqrt(input: Field) -> Field {}

unconstrained fn get_sqrt(input: Field) -> Field {
    sqrt(input)
}

fn main(input: Field) {
    let sqrt = get_sqrt(input);
    println(f"sqrt: {sqrt}");
    // 0x30644E72E131A029B85045B68181585D2833E84879B9709143E1F593EFFFFFFF
    assert(sqrt * sqrt == input);
}

#[test]
fn test_main() {
    main(4);
    // Uncomment to make test fail
    // main(1, 1);
}
