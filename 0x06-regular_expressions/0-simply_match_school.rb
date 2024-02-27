#!/usr/bin/env ruby

# Get the input string from the command-line argument
input_string = ARGV[0]

regex = /School/

matches = input_string.scan(regex)

puts matches.join("")

