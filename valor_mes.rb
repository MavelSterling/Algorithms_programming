#Archivo: laboratorio2.rb
#Autores: Mavelyn Sterling, Santiago Herrera Cabrera
#Programas académicos: Estadística <3752> ; Ingeniería electronica <3744>
#Profesor: Angel Garcia Baños <angel.garcia@correounivalle.edu.co>
#Fecha creación: 2016-04-25
#Fecha última modificación: 2016-04-26
#Versión: 0.1
#Licencia: GPL



def valorMes(nombre1, edad1, cantidadMes1)
     
  if edad1 < 12
    valorPagar = cantidadMes1 * 43000
    categoria = "infantil"
   
 elsif edad1 < 18
     valorPagar = cantidadMes1 * 36000
     categoria = "juvenil"
 
  elsif edad1 >= 18 
     categoria = "mayores"
     valorPagar = cantidadMes1 * 32000
     end  
     
  return nombre1, categoria, valorPagar
end


puts valorMes("John Machado", 15, 5)
puts valorMes("Julieta Narvaez", 11, 2)
puts valorMes("Joaquin Beltran", 23, 3)


