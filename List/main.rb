require_relative 'contact'

contacts=[]

while true
  puts "\n=== Gerenciador de Contatos ==="
  puts "1 - Adicionar contato"
  puts "2 - Remover contato"
  puts "3 - Buscar contato"
  puts "4 - Listar todos os contatos"
  puts "5 - Sair"

  print "\nEscolha uma opção: "
  option=gets.chomp.to_i

  if(1..5).include?(option)
    case option
    when 1
      print "Digite o nome do contato:"
      name=gets.chomp
      print "Digite o telefone do contato: "
      phone=gets.chomp
      contacts.push(Contact.new(name,phone))
      puts "\nContato adicionado!"
    when 2
      print "Digite o nome do contato que deseja remover: "
      name=gets.chomp
      contact_to_remove = contacts.find { |c| c.name.downcase == name.downcase }
      if contact_to_remove
        contacts.delete(contact_to_remove)
        puts "\nContato removido com sucesso!"
      else
        puts "\nContato não encontrado."
      end
    when 3
      if contacts.empty?
        puts "\nNenhum contato cadastrado."
      else
        print "Digite o nome do contato que deseja buscar: "
        name = gets.chomp

        contact_found=contacts.find{|c|c.name.downcase == name.downcase}

        if contact_found
          puts "\nContato encontrado: #{contact_found}"
        else
          puts "\nContato não encontrado."
        end
      end

    when 4
      if contacts.empty?
        puts "\nNenhum contato cadastrado."
      else
        puts "\n--- contatos cadastrados ---"
        contacts.each_with_index do  |c,i|
        puts "#{i + 1}. #{c}"
        end
      end
    when 5
      puts "\nSaindo..."
      break
    end
  else
    puts "\nOpção inválida! Digite apenas números de 1 a 5."
  end
end
