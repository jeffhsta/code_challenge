fn main() {
}

fn clockangle(hour: u16, minute: u16) -> u16 {
    match (in_hour_range(hour), in_minute_range(minute)) {
        (true, true) => calculate_clock_angle(hour, minute),
        (false, _) => panic!("Invalid hour"),
        (_, false) => panic!("Invalid minute")
    }
}

fn in_hour_range(hour: u16) -> bool {
    hour >= 1 && hour <= 12
}

fn in_minute_range(minute: u16) -> bool {
    minute < 60
}

fn calculate_clock_angle(hour: u16, minute: u16) -> u16 {
    let hour_angle = ((360 / 12) * hour) % 360;
    let minute_angle = ((360 / 60) * minute) % 360;
    let fminute = minute as f32;
    let fextra_hour_angle = (fminute / 60.0) * ((360 / 12) as f32);
    let extra_hour_angle = if fextra_hour_angle > u16::max_value() as f32 {
        None
    } else {
        Some(fextra_hour_angle as u16)
    };

    println!("extra angle {}", extra_hour_angle.unwrap());

    let right_angle = positive_subtract(hour_angle + extra_hour_angle.unwrap(), minute_angle);
    let left_angle = 360 - right_angle;

    if left_angle < right_angle {
        left_angle
    } else {
        right_angle
    }
}

fn positive_subtract(left_value: u16, right_value: u16) -> u16 {
    if left_value > right_value {
        left_value - right_value
    } else {
        right_value - left_value
    }
}

#[test]
#[should_panic(expected = "Invalid hour")]
fn panic_when_hour_is_lower_than_1() {
    clockangle(0, 0);
}

#[test]
#[should_panic(expected = "Invalid hour")]
fn panic_when_hour_is_higher_than_12() {
    clockangle(13, 0);
}

#[test]
#[should_panic(expected = "Invalid minute")]
fn panic_when_minute_is_higher_than_60() {
    clockangle(1, 60);
}

#[test]
fn return_angle_0_when_clock_is_12_0() {
    let angle = clockangle(12, 0);
    assert_eq!(angle, 0);
}

#[test]
fn return_angle_90_when_clock_is_3_0() {
    let angle = clockangle(3, 0);
    assert_eq!(angle, 90);
}

#[test]
fn return_angle_180_when_clock_is_6_0() {
    let angle = clockangle(6, 0);
    assert_eq!(angle, 180);
}

#[test]
fn return_angle_90_when_clock_is_9_0() {
    let angle = clockangle(9, 0);
    assert_eq!(angle, 90);
}

#[test]
fn return_angle_105_when_clock_is_3_30() {
    let angle = clockangle(3, 30);
    assert_eq!(angle, 75);
}
