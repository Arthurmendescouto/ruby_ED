require_relative 'pagina'

if __FILE__ == $0
  historico = []
  paginas_avancadas = []

  loop do
    puts "\nEscolha uma opção:"
    puts "1 - Visitar página"
    puts "2 - Voltar"
    puts "3 - Avançar"
    puts "4 - Mostrar histórico"
    puts "5 - Sair"
    print "Opção: "
    opcao = gets.chomp

    case opcao
    when "1"
      print "Digite a URL: "
      url = gets.chomp
      print "Digite o título da página: "
      titulo = gets.chomp

      pagina = Pagina.new(url, titulo)

      historico.push(pagina)
      paginas_avancadas = []

      puts "\nPágina visitada: #{pagina}"

    when "2"
      if historico.empty?
        puts "\nNão há páginas para voltar."
      else
        pagina = historico.pop
        paginas_avancadas.push(pagina)
        if historico.empty?
          puts "\nVocê já voltou todas as páginas."
        else
          puts "\nPágina atual: #{historico.last}"
        end
      end

    when "3"
      if paginas_avancadas.empty?
        puts "\nNão há páginas para avançar"
      else
        pagina = paginas_avancadas.pop
        historico.push(pagina)
        puts "\nPágina atual: #{pagina}"
      end

    when "4"
      if historico.empty?
        puts "\nHistórico vazio."
      else
        puts "\nHistórico de páginas:"
        historico.reverse_each { |p| puts p }
      end

    when "5"
      puts "\nSaindo..."
      break

    else
      puts "\nOpção inválida. Tente novamente."
    end

  end
end
