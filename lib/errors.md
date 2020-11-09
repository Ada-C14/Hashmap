The following errors were popping up if I didn't wrap permuations.rb in a module (or otherwise limit the scope of at least the methods associated with the permutations."

Array Intersection
  test_0002_returns [] for arrays that don't intersect           ERROR (0.00s)
Minitest::UnexpectedError:         ArgumentError: Invalid character encountered. Program exiting.
            /app/lib/permutations.rb:43:in `to_ascii'
            /app/lib/permutations.rb:28:in `block in generate_hash_table'
            /app/lib/permutations.rb:27:in `each'
            /app/lib/permutations.rb:27:in `generate_hash_table'
            /app/lib/array_intersection.rb:6:in `intersection'
            /app/test/array_intersection_test.rb:9:in `block (2 levels) in <top (required)>'

  test_0001_returns [4] for [2, 3, 4], and [4, 5, 6]             ERROR (0.00s)
Minitest::UnexpectedError:         ArgumentError: Invalid character encountered. Program exiting.
            /app/lib/permutations.rb:43:in `to_ascii'
            /app/lib/permutations.rb:28:in `block in generate_hash_table'
            /app/lib/permutations.rb:27:in `each'
            /app/lib/permutations.rb:27:in `generate_hash_table'
            /app/lib/array_intersection.rb:6:in `intersection'
            /app/test/array_intersection_test.rb:5:in `block (2 levels) in <top (required)>'

  test_0003_returns [50, 25, 43] for 50, 43, 25, 72], and [25, 36, 43, 50, 80]ERROR (0.00s)
Minitest::UnexpectedError:         ArgumentError: Invalid character encountered. Program exiting.
            /app/lib/permutations.rb:43:in `to_ascii'
            /app/lib/permutations.rb:28:in `block in generate_hash_table'
            /app/lib/permutations.rb:27:in `each'
            /app/lib/permutations.rb:27:in `generate_hash_table'
            /app/lib/array_intersection.rb:6:in `intersection'
            /app/test/array_intersection_test.rb:13:in `block (2 levels) in <top (required)>'
