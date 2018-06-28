# Ejercicio 1
# Crear un método que reciba dos strings, este método creará un archivo index.html y pondrá como párrafo cada uno de los strings recibidos.

def string_parrafo(p1, p2)
  File.open('index.html', 'w'){|file|
  puts 'Archivo creado'
  file.puts "<p>#{p1}</p>"
  file.puts "<p>#{p2}</p>"
}
end

p1 = "Parrafo1"
p2 = "Parrafo2"

string_parrafo(p1,p2)

# Crear un método similar al anterior, que además pueda recibir un arreglo. Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.
def add_list(p1, p2, list)
  file = File.open('index.html', 'w') do |file|
  file.puts "<p>#{p1}</p>"
  file.puts "<p>#{p2}</p>"
  file.puts '<ul>'
  if ! list.empty?
  list.each{ |x| file.puts "<li>#{x}</l1>" }
  end
  file.puts '</ul>'
  file.close
  end
end
p1 = "Parrafo1"
p2 = "Parrafo2"
list = [1,2,3]

add_list(p1,p2, list)

# Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.
