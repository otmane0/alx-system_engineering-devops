#!/usr/bin/env ruby

# Method to match the regular expression
def match_school(string)
    # Define the regular expression
    regex = /School/
  
    # Use the match method to check for a match
    match_data = string.match(regex)
  
    # Output the matched string or an empty string if no match
    puts match_data ? match_data[0] : ""
  end
  
  # Get the argument from the command line
  argument = ARGV[0]
  
  # Call the method with the argument
  match_school(argument)
  