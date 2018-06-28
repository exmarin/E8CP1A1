# def conteo
#   file = File.open('peliculas.txt', 'r')
#   table = file.readlines.map { |e| e.chomp  }
#   file.close
#
#  puts table.length
# end
#
# conteo

def total_palabras
  file = File.open('peliculas.txt', 'r')
  movies = file.readlines.join.split(' ')
  file.close
  p movies.length

end

total_palabras

def string_repedito(str1)
  file = File.open('peliculas.txt', 'r')
  movies = file.readlines.join.downcase.split(str1.downcase).length-1
  file.close
  movies
end

puts " "
p string_repedito("guerra")
