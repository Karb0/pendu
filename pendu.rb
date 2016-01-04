require 'pry'
system "clear"
puts "Choisir un mot à faire trouver?"
mot = gets.chomp

tablettres = mot.split('')
nblettres = tablettres.count
tabsol = []
nblettres.times {|i| tabsol << "_"}
system "clear"
puts "Le mot comporte #{nblettres} lettres"
while tabsol.include?("_")
  puts "#{tabsol.join}"
  puts "Choisir une lettre?"
  lettre = gets.chomp
  lettreindex = []
  tablettres.each.with_index do |l, i| 
    if l == lettre
      lettreindex << i
    end
  end
  lettreindex.each {|i| tabsol[i] = lettre}
end

puts "#{mot}"

