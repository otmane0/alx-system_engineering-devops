#!/usr/bin/env ruby

# Method to match the regular expression
def match_school(string)
    # Define the regular expression
    inpot = /School/
  
    kaka = string.match(inpot)
  
    puts kaka ? kaka[0] : ""
  end
  
  argument = ARGV[0]
  
  match_school(argument)
  