(ns fizzbuzz.core-test
  (:require [clojure.test :refer :all]
            [fizzbuzz.core :refer [fizzbuzz]]))

(deftest return-empty-list-for-empty-list
  (testing "Return an empty list for empty list"
    (is (= (fizzbuzz []) []))))

(deftest return-numbers-for-list-1-2
  (testing "Return only numbers for list from 1 to 2"
    (is (= (fizzbuzz [1 2]) ["1" "2"]))))

(deftest return-one-fizz
  (testing "Return [1 2 Fizz] for list from 1 to 3"
    (is (= (fizzbuzz (range 1 4)) ["1" "2" "Fizz"]))))

(deftest return-one-buzz
  (testing "Return [1 2 Fizz 4 Buzz] for list from 1 to 5"
    (is (= (fizzbuzz (range 1 6)) ["1" "2" "Fizz" "4" "Buzz"]))))

(deftest return-four-fizz-two-buzz-one-fizzbuzz
  (testing "Return [1 2 Fizz 4 Buzz] for list from 1 to 15"
    (is (= (fizzbuzz (range 1 16)) ["1" "2" "Fizz" "4" "Buzz" "Fizz" "7" "8" "Fizz" "Buzz" "11" "Fizz" "13" "14" "FizzBuzz"]))))
