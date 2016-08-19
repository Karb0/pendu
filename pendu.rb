require 'pry'
require './drawing.rb'
system "clear"
puts "Choisir un mot à faire trouver?"
mot = gets.chomp

tablettres = mot.split('')
nblettres = tablettres.count
tabsol = []
nblettres.times {|i| tabsol << "_"}
draw = Draw.new
error = 0
system "clear"
while tabsol.include?("_") && error != 12
  draw.send("draw#{error}")
  puts "Le mot à trouver comporte #{nblettres} lettres: #{tabsol.join}"
  puts "Choisir une lettre?"
  lettre = gets.chomp
  lettreindex = []
  tablettres.each.with_index do |l, i| 
    if l == lettre
      lettreindex << i
    end
  end
  if !mot.include?(lettre)
    error += 1
  end
  lettreindex.each {|i| tabsol[i] = lettre}
end

puts "Le mot à trouver était"
puts "#{mot}"

