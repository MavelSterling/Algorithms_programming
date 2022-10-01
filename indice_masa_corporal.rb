#Archivo: laboratorio2.rb
#Autores: Mavelyn Sterling, Santiago Herrera Cabrera
#Programas académicos: Estadística <3752> ; Ingeniería electronica <3744>
#Profesor: Angel Garcia Baños <angel.garcia@correounivalle.edu.co>
#Fecha creación: 2016-04-25
#Fecha última modificación: 2016-04-26
#Versión: 0.1
#Licencia: GPL



def indice (nombrePaciente, pesoPaciente, alturaPaciente)
  imc1 = (pesoPaciente / (alturaPaciente * alturaPaciente))
 
  if (pesoPaciente / (alturaPaciente * alturaPaciente)) <= 18.5 
    categoria = "infrapeso"
  elsif (pesoPaciente / (alturaPaciente * alturaPaciente)) < 25.0
     categoria = "normal"
  elsif (pesoPaciente / (alturaPaciente * alturaPaciente)) >= 25.0
     categoria ="sobrepeso"
  end 
  
  return nombrePaciente, imc1, categoria
end

puts indice( "Alex Valencia",68.3, 1.72)
puts indice( "Maria Caicedo" , 55.1, 1.62)
puts indice( "Juan Morales" , 90.1, 1.71)

    

    