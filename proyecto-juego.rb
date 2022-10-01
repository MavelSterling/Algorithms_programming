#Archivo: ensayoProyecto.rb
#Autores: Mavelyn Sterling, Santiago Herrera Cabrera
#Programas académicos: Estadística <3752> ; Ingeniería electronica <3744>
#Profesor: Angel Garcia Baños <angel.garcia@correounivalle.edu.co>
#Fecha creación: 2016-07-18
#Fecha última modificación: 2016-07-22
#Versión: 0.1
#Licencia: GPL


class Board

  def initialize
    @board = Array.new(3) { Array.new(3, " ") }
  end

  def imprimirInstrucciones
    puts "Los lugares del tablero son: (los cuales debe digitar el numero de la posicion que desea ubicar su simbolo en su turno)"
    puts "1 | 2 | 3",
         "---------",
         "4 | 5 | 6",
         "---------",
         "7 | 8 | 9"
    print "\n"
  end

  def imprimirTabla
    (0..2).each do |fila|
      print "       "
      (0..2).each do |columna|
        print @board[fila][columna]
        print " | " unless columna == 2
      end
      print "\n"
      print "       ---------\n" unless fila == 2
    end
    print "\n"
  end

  def buscarGanador
    #  X X X        X
    #          &    X
    #               X

    (0..2).each do |i|
      if @board[i][0] == @board[i][1] && @board[i][1] == @board[i][2]
        return @board[i][0] unless @board[i][0] == " "

      elsif @board[0][i] == @board[1][i] && @board[1][i] == @board[2][i]
        return @board[0][i] unless @board[0][i] == " "
      end
    end

    #  X               X
    #    X     &     X
    #      X       X

    if ( @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2] ) ||
       ( @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] )
      return @board[1][1] unless @board[1][1] == " "
    end

    #  X O X
    #  X O X
    #  O X O

    return "C" unless @board.join.split('').include?(" ")

    # indeciso

    return "U"
  end

  def ponerPieza(pieza, fila, columna)
    @board[fila][columna] = pieza if (0..2) === fila &&
                                (0..2) === columna &&
                                @board[fila][columna] == " "
  end
end

tabla = Board.new
jugadorActivo = "X"

puts "\n" * 100
tabla.imprimirInstrucciones

while tabla.buscarGanador == "U"

puts " turno de #{jugadorActivo}. elige un lugar. "
  
  movimiento = gets.chomp.to_i - 1
  fila = movimiento / 3
  columna = movimiento % 3

  puts "\n" * 100

  if tabla.ponerPieza(jugadorActivo, fila, columna)
    if jugadorActivo == "X"
      jugadorActivo = "O"
    else
      jugadorActivo = "X"
    end
  else
    puts "                 movimiento invalido, por favor selecciona otro lugar  \n\n"
  end

  tabla.imprimirTabla
end

ganador = tabla.buscarGanador

puts "\n" * 100


  if ganador == "C"
    puts "  !!!! EMPATE!!!!"
  else
    puts "   !!!!! HA GANADO #{ganador.upcase} FELICIDADES !!!!"
  end


puts "\n"
tabla.imprimirTabla
