
class Pagina
  def initialize(url, titulo)
    @url=url
    @titulo = titulo
  end

  def to_s
    "#{@titulo} (#{@url})"
  end
end
