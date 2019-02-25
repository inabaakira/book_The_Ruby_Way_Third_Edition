#!/usr/bin/env ruby
#-*- mode: ruby; coding: utf-8 -*-
# file: 2_2_36_1.rb
#    Created:       <2019/02/25 10:47:21>
#    Last Modified: <2019/02/25 15:06:12>

class String
  def levenshtein(other, ins = 2, del = 2, sub = 1)
    # ins, del and sub are weighted costs
    return nil if self.nil?
    return nil if other.nil?
    dm = []    # distance matrix

    # Initialize first row values.
    dm[0] = (0..self.length).collect { |i| i * ins }

    fill = [nil] * (self.length - 1)
    # Initialize first column values
    for i in 1..other.length
      dm[i] = [ i * del, fill.flatten ]
    end

    # populate matrix
    for i in 1..other.length
      for j in 1..self.length
        dm[i][j] = [
          dm[i-1][j-1] + (self[j - 1] == other[i-1] ? 0 : sub),
          dm[i][j-1] + ins,
          dm[i-1][j] + del
        ].min
      end
    end

    # The last value in matrix is the
    # Levenshtein distance between the strings
    dm[other.length][self.length]
  end
end

s1 = "ACUGAUGUGA"
s2 = "AUGGAA"
d1 = s1.levenshtein(s2)
puts "string1: #{s1}, string2: #{s2}, distance: #{d1}"

s3 = "pennsylvania"
s4 = "pencilvaneya"
d2 = s3.levenshtein(s4)
puts "string1: #{s3}, string2: #{s4}, distance: #{d2}"

s5 = "abcd"
s6 = "abcd"
d3 = s5.levenshtein(s6)
puts "string1: #{s5}, string2: #{s6}, distance: #{d3}"
