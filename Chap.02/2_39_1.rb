#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: 2_39_1.rb
#    Created:       <2019/02/26 14:03:24>
#    Last Modified: <2019/02/26 14:13:23>

str = <<-EOF
  When in the Course of human events it becomes necessary
  for one people to dissolve the political bands which have
  connected them with another, and to assume among the powers
  of the earth the separate and equal station to which the Laws
  of Nature and of Nature's God entitle them, a decent respect
  for the opinions of mankind requires that they should declare
  the causes which impel them to the separation.
EOF

max = 20

line = 0
out = [""]

input = str.gsub(/\n/, "")
words = input.split(" ")

while input != ""
  word = words.shift
  break if not word
  if out[line].length + word.length > max
    out[line].squeeze!(" ")
    line += 1
    out[line] = ""
  end
  out[line] << word + " "
end

out.each { |line| puts line } # Prints 23 very short lines.
