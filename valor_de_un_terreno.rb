#Archivo: laboratorio1.rb
#Autores: Mavelyn Sterling, Santiago Herrera Cabrera
#Fecha creación: 2016-04-10
#Fecha última modificación: 2016-04-17
#Versión: 0.1
#Licencia: GPL

puts "Por favor, introduce la dimensión en metros del lado 1"
dimension_lado1 = gets.chomp.to_f
puts "Por favor, introduce la dimension en metros del lado 2"
dimension_lado2 = gets.chomp.to_f
puts "Por favor, introduce la dimension en metros del lado 3"
dimension_lado3 = gets.chomp.to_f
puts "por favor, introduce el valor en pesos del metro cuadrado de terreno"
valor_metro_cuadrado= gets.chomp.to_f

dimension_lado4 = dimension_lado1 - dimension_lado3#el lado 4 es la altura del rectangulo.
area_triangulo = (dimension_lado2 * dimension_lado4) / 2 
area_rectangulo = dimension_lado2 * dimension_lado3 
total_terreno = (area_rectangulo *0.0001) + (area_triangulo *0.0001)

valor_hectarea = valor_metro_cuadrado * 10000 
valor_terreno = valor_hectarea * total_terreno 



puts "El terreno total es #{total_terreno} hectáreas"
puts "El valor del terreno es #{valor_terreno} pesos."



