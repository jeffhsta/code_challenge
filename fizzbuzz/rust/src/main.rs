fn main() {}

fn fizzbuzz(list_size: u8) -> Vec<String> {
    if list_size > 0 {
        (1..(list_size + 1))
            .into_iter()
            .map(|number| parse(number))
            .collect()
    } else {
        panic!("Invalid argument")
    }
}

fn parse(number: u8) -> String {
    match (number % 3, number % 5) {
        (0, 0) => "FizzBuzz".to_string(),
        (0, _) => "Fizz".to_string(),
        (_, 0) => "Buzz".to_string(),
        _ => number.to_string(),
    }
}

#[test]
fn return_a_list_with_a_single_element() {
    assert_eq!(fizzbuzz(1), vec!["1"])
}

#[test]
fn return_a_list_with_3_6_and_9_replaced_by_fizz() {
    let expected_result = vec!["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz"];
    assert_eq!(fizzbuzz(9), expected_result)
}

#[test]
fn return_a_list_with_5_and_10_replaced_by_buzz() {
    let expected_result = vec![
        "1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz",
    ];
    assert_eq!(fizzbuzz(10), expected_result)
}

#[test]
fn return_a_list_with_15_replaced_by_fizzbuzz() {
    let expected_result = vec![
        "1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14",
        "FizzBuzz",
    ];
    assert_eq!(fizzbuzz(15), expected_result)
}

#[test]
#[should_panic(expected = "Invalid argument")]
fn return_an_error_when_passing_a_number_below_1() {
    fizzbuzz(0);
}
