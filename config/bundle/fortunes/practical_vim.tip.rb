#!/usr/bin/env ruby

tips = [
  "Tip 1 │  Meet the Dot Command",
  "Tip 2 │  Don’t Repeat Yourself"
]

puts ARGV[0] ? tips[ARGV[0].to_i] : tips.sample
