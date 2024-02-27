#!/usr/bin/env ruby

pattern = /\[from:(\+?\w+)\] \[to:(\+?\w+)\] \[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)\]/
puts ARGV[0].scan(pattern).join(",")
