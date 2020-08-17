# puts "hello"
# t = Time.now
name = "Victor André Costa da Silva"
dob = Time.new(1993, 9, 27).utc

puts "Comando de 1 - 6: "
input = gets.chomp

case input
  when "1"
    puts name
  
  when "2"
    puts dob.strftime("%d/%m/%Y")
  
  when "3"
    now = Time.now.utc
    age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1) #cuida de anos bissexto
    puts age**2
  
  when "4"
    puts "Digite o texto: "
    str = gets().chomp
    
    puts "Texto invertido"
    puts str.reverse!
  
  when "5"
    puts "Digite o texto: "
    str = gets().chomp
  
    numeroImprimir = (str.length/2)-1 #pois vetor comeca em 0
    puts str[0..numeroImprimir]
  
  when "6"
    values = (dob.strftime("%d/%m/%Y")).split(//).map(&:to_i)
    puts values.inject(:+)
  
else
  puts "comando invalido, digite 1 a 6"
  
end