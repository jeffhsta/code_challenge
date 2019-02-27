fn main() {}

fn fibonacci(sequence_size: usize) -> Vec<i32> {
    match sequence_size {
        0 => panic!("Invalid argument"),
        1 => vec![1],
        2 => vec![1, 1],
        _ => next_sequence_number(vec![1, 1], sequence_size),
    }
}

fn next_sequence_number(sequence: Vec<i32>, sequence_size: usize) -> Vec<i32> {
    if sequence.len() >= sequence_size {
        sequence
    } else {
        let (before_last, last) = get_last_two_items(&sequence);
        let mut new_sequence = sequence.clone();
        new_sequence.push(last + before_last);
        next_sequence_number(new_sequence, sequence_size)
    }
}

fn get_last_two_items(sequence: &Vec<i32>) -> (i32, i32) {
    if let Some((last, rest)) = (*sequence).split_last() {
        if let Some((before_last, _)) = rest.split_last() {
            return (*before_last, *last);
        }
    }

    panic!(
        "Error when tried to get the last two items from vector {:?}",
        sequence
    );
}

#[test]
fn return_first_sequence_for_sequence_size_1() {
    assert_eq!(fibonacci(1), vec![1]);
}

#[test]
fn return_first_sequence_for_sequence_size_2() {
    assert_eq!(fibonacci(2), vec![1, 1]);
}

#[test]
fn return_first_sequence_for_sequence_size_10() {
    assert_eq!(fibonacci(10), vec![1, 1, 2, 3, 5, 8, 13, 21, 34, 55]);
}

#[test]
#[should_panic(expected = "Invalid argument")]
fn panic_for_invalid_argument() {
    fibonacci(0);
}
