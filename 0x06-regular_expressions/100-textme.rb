#!/usr/bin/env ruby

# Check if the argument matches the specified pattern for a 10-digit phone number

puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")