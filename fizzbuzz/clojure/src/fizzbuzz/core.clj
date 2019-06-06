(ns fizzbuzz.core)

(defn- convert-number [num]
  (cond
    (= (mod num 15) 0) "FizzBuzz"
    (= (mod num 5) 0) "Buzz"
    (= (mod num 3) 0) "Fizz"
    :else (str num)))

(defn fizzbuzz [enumerable]
  (map convert-number enumerable))
