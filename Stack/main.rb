require_relative 'stack'

if __FILE__ ==$0
  stack=Stack.new(12)

  stack.push("Cavalo")
  stack.push("Cachorro")
  puts "Espiar: #{stack.peek}"

  stack.push("Gato")
  stack.push("Lagarto")
  puts "Espiar: #{stack.peek}"

  conteudo=stack.pop
  stack.pop

  stack.push("Tartaruga")
  stack.update("Tartaruga Marinha")

  stack.push(stack.pop)
  puts "Espiar: #{stack.peek}"
  stack.push(conteudo)
  puts "Pilha = #{stack.print_stack}"
end
