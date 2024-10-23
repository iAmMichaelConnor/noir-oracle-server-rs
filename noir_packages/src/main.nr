#[oracle(get_sqrt)]
unconstrained fn get_sqrt_oracle(input: Field) -> Field {}

unconstrained fn get_sqrt(input: Field) -> Field {
    get_sqrt_oracle(input)
}

#[oracle(get_sqrts)]
unconstrained fn get_sqrts_oracle(inputs: [Field; 2]) -> [Field; 2] {}

unconstrained fn get_sqrts(inputs: [Field; 2]) -> [Field; 2] {
    get_sqrts_oracle(inputs)
}

fn main(input: Field) {
    let sqrt = unsafe {
        get_sqrt(input)
    };
    println(f"sqrt: {sqrt}");
    assert(sqrt * sqrt == input);

    let input2 = input * input;
    let sqrts = unsafe {
        get_sqrts([input, input2])
    };
    println(f"sqrts: {sqrts}");
    assert(sqrts[0] * sqrts[0] == input);
    assert(sqrts[1] * sqrts[1] == input2);
}

#[test]
fn test_main() {
    main(4);
    // Uncomment to make test fail
    // main(1, 1);
}
