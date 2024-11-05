require 'tubular'

# Define your regex pattern
pattern = /\d{3}-\d{2}-\d{4}/  # Example: matches a pattern like 123-45-6789

# Use Tubular to test the pattern
tests = Tubular::Test.new(pattern)

# Define test cases
tests.match '123-45-6789'   # Should match
tests.match '12-345-6789'   # Should not match
tests.not_match 'abc-def-ghij'  # Should not match
