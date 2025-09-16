# frozen_string_literal: true

class Passageiro
  def initialize(nome,destino,valor)
    @nome=nome
    @destino=destino
    @valor=valor
  end
  def to_s
    "#{@nome} - Destino: #{@destino}, valor: R$#{'%.2f'%@valor}".gsub('.',',')
  end
end
