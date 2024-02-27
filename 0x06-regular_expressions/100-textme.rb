#!/usr/bin/env ruby

## Regular expression pattern to extract sender, receiver, and flags
pattern = /\[from:(?<sender>[\w+\s]+)\] \[to:(?<receiver>[\w+\s]+)\] \[flags:(?<flags>[\w:-]+)\]/

## Read each line from stdin
ARGF.each do |line|
match_data = line.match(pattern)
if match_data
  sender = match_data[:sender]
  receiver = match_data[:receiver]
  flags = match_data[:flags]
  puts "#{sender},#{receiver},#{flags}"
end
end
