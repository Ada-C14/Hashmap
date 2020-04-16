# Hashmap-Questions

In this set of exercises you will practice solving interview-style questions using hashes.

**Due Monday **** 7pm**

## Array Intersection

Design and implement a method that takes two integer arrays with unique values and returns their intersection in a new array.

For example:

```
intersection([2, 3, 4], [4, 5, 6]) => [4]
intersection([50, 43, 25, 72], [25, 36, 43, 50, 80]) => [50, 25, 43]
intersection([9, 30, 42], [56, 34, 90, 32]) => []
```

## Check Permutations

Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.

```
permutations?("hello", "ehllo") => true
permutations?("pasta", "atsap") => true
permutations?("Pizza", "Pasta") => false
permutations?("", "") => true
```

## Could Be A Palindrome

Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.

```
palindrome_permutation?("hello") => false
palindrome_permutation?("carrace") => true # because racecar is a palindrome
```
