#Archivo: laboratorio1.rb
#Autores: Mavelyn Sterling, Santiago Herrera Cabrera 
#Fecha creación: 2016-04-10
#Fecha última modificación:2016-04-17
#Versión: 0.1
#Licencia: GPL

puts "por favor, introduzca el nombre de el suscriptor"
nombre_suscriptor = gets.chomp.to_s
puts "Por favor, introduzca la dirección"
direccion = gets.chomp.to_s
puts"Por favor, introduzca el número del contrato del servicio de agua"
numero_contrato_agua = gets.chomp.to_s
puts"Por favor, introduzca el cargo básico del servicio de agua"
cargo_basico_agua = gets.chomp.to_i
puts "por favor, introduzca la lectura actual de metros cubicos de agua consumidos"
lectura_actual_agua= gets.chomp.to_f
puts "por favor, introduzca la lectura anterior de metros cubicos de agua consumidos"
lectura_anterior_agua= gets.chomp.to_f
puts "por favor, introduzca la fecha de vencimiento del pago de la factura de agua"
vencimiento_agua= gets.chomp.to_s
puts "por favor, introduzca la fecha de expedicion de la factura de agua"
expedicion_agua= gets.chomp.to_s
puts "por favor, introduzca el cargo basico del servicio de energia"
cargo_basico_energia= gets.chomp.to_i
puts "por favor, introduzca el numero del contrato del servicio de energia"
numero_contrato_energia= gets.chomp.to_s
puts "por favor, introduzca la lectura actual de Kilowatts-hora de energia consumidos"
lectura_actual_energia= gets.chomp.to_f
puts "por favor, introduzca la lectura anterior de Kilowatts-hora de energia consumidos"
lectura_anterior_energia= gets.chomp.to_f
puts "por favor, introduzca la fecha de vencimiento del pago de la factura de energia"
vencimiento_energia= gets.chomp.to_s
puts "por favor, introduzca la fecha de expedicion de la factura de energia"
expedicion_energia= gets.chomp.to_s


resultado_lectura_agua = lectura_actual_agua - lectura_anterior_agua


resultado_consumo_agua = resultado_lectura_agua * 1200

resultado_total_agua = cargo_basico_agua + resultado_consumo_agua

resultado_lectura_energia = lectura_actual_energia - lectura_anterior_energia

resultado_consumo_energia = resultado_lectura_energia * 320

resultado_total_enegia = cargo_basico_energia + resultado_consumo_energia

resultado_total_factura = resultado_total_agua + resultado_total_enegia

puts "nombre: #{nombre_suscriptor}"
puts "direccion: #{direccion}"
puts "numero del contrato del servicio de agua: #{numero_contrato_agua}"
puts "cargo basico servicio de agua: #{cargo_basico_agua}"
puts "lectura de agua mes anterior: #{lectura_anterior_agua}"
puts "lectura de agua mes actual: #{lectura_actual_agua}"
puts "El total de Agua #{resultado_total_agua} en metros cubicos" 
puts "fecha de vencimiento del recibo de agua: #{vencimiento_agua}"
puts "fecha de expedicion del recibo de agua: #{expedicion_agua}"

puts "numero del contrato del servicio de energia: #{numero_contrato_energia}"
puts "cargo basico servicio de energia: #{cargo_basico_energia}"
puts "lectura de energia mes anterior: #{lectura_anterior_energia}"
puts "lectura de energia mes actual: #{lectura_actual_energia}"
puts "El total de Energía #{resultado_total_enegia} Kilowatts"
puts "fecha de vencimiento del recibo de energia: #{vencimiento_energia}"
puts "fecha de expedicion del recibo de energia: #{expedicion_energia}"

puts "El valor de su fractura es #{resultado_total_factura}"








