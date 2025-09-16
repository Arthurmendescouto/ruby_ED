
class Contact
  attr_reader :name, :phone  #equivalente aos getters do Java

  def initialize(name, phone)
    @name=name
    @phone=phone
  end

  def to_s
    "#{@name} - #{@phone}"
  end
end
