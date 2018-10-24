#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: 1_2_5_1.rb
#    Created:       <2018/09/30 14:35:51>
#    Last Modified: <2018/10/24 10:33:47>

print "Please enter a temperature and scale (C of F): "
STDOUT.flush
str = gets
exit if str.nil? || str.empty?
str.chomp!
temp, scale = str.split(" ")

abort "#{temp} is not a valid number." if temp !~ /^-?\d+(?:\.\d+)?$/

temp = temp.to_f
case scale
when "C", "c"
  f = 1.8 * temp + 32
when "F", "f"
  c = (5.0/9.0) * (temp - 32)
else
  abort "Must specify C or F."
end

if f.nil?
  puts "#{c} degrees C"
else
  puts "#{f} degrees F"
end
