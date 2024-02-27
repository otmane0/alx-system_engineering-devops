#!/usr/bin/env ruby

# Method to match the regular expression
def match_school(string)
    # Define the regular expression
    regex = /School/
  
    match_data = string.match(regex)
  
    puts match_data ? match_data[0] : ""
  end
  
  argument = ARGV[0]
  
  match_school(argument)
  