require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/skip_dsl"
require "minitest"

require_relative "../lib/array_intersection"
require_relative "../lib/palindrome_permutation"
require_relative "../lib/permutations"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


