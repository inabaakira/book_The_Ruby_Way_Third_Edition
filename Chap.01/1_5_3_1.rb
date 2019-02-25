#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: 1_5_3_1.rb
#    Created:       <2019/01/23 14:38:29>
#    Last Modified: <2019/01/23 14:43:57>

case "Hello"
when /Hell/ # /Hell/ === "Hello" (Regex クラスの === メソッド)
  puts "We matched."
else
  puts "We didn't match."
end

case /Hell/
when "Hello" # "Hello" === /Hell/ (String クラスの === メソッド)
  puts "We matched."
else
  puts "We didn't match."
end
