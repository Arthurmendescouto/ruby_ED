require_relative 'passageiro'


fila = []

while true
  puts "\n=== Rodoviária - Guichê de Passagens ==="
  puts "1 - Passageiro entra na fila"
  puts "2 - Atender passageiro"
  puts "3 - Mostrar fila"
  puts "4 - Ver próximo passageiro"
  puts "5 - Sair"

  print "\nEscolha uma opção:"
  opcao = gets.chomp.to_i
  if (1..5).include?(opcao)

    case opcao
    when 1
      print "Digite o nome do passageiro: "
      nome = gets.chomp
      print "Digite o destino do passageiro: "
      destino=gets.chomp
      print "Digite o valor da passagem: "
      valor_input=gets.chomp
      valor=valor_input.tr(',','.').to_f
      passageiro=Passageiro.new(nome,destino,valor)
      puts "\nPassageiro adicionado à fila: #{passageiro}."
      fila.push(passageiro)
    when 2
      if fila.empty?
        puts "\nNenhum passageiro na fila."
      else
        atendido = fila.shift
        puts "\nO passageiro #{atendido} Foi atendido."
      end
    when 3
      if fila.empty?
        puts "\nFila vazia."
      else
        puts "\nPassageios na fila:"
        fila.each_with_index do |pessoa, i|
          puts "#{i + 1}. #{pessoa}"
        end
      end
    when 4
      if fila.empty?
        puts "\nNão possui próximo passageiro."
      else
        puts " O próximo passageiro/passageira é: #{fila.first}"

      end

    when 5
      puts "\nSaindo..."
      break
    end
  else
    puts "\nOpção inválida! Digite apenas números de 1 a 5."
  end
end