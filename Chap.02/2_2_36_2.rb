#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: 2_2_36_2.rb
#    Created:       <2019/02/25 15:03:08>
#    Last Modified: <2019/02/25 15:06:42>

require "./2_2_36_1"

class String
  def similar?(other, thresh = 2)
    self.levenshtein(other) < thresh
  end
end

if "polarity".similar?("hilarity")
  puts "Electricity is funny!"
end
