module Formula
  def perimetro(lado1, lado2)
    puts "Perimetro: #{lado1*2 + lado2*2}"
  end

  def area(lado1, lado2)
    puts "Area: #{lado1*lado2}"
  end
end

class Rectangulo
  attr_accessor :base, :altura
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    puts "Base = #{@base}, Altura = #{@altura}"
  end
end

class Cuadrado
  attr_accessor :base, :altura
  include Formula
  def initialize(lado)
    @base = lado
    @altura = lado
  end

  def lados
    puts "Lado = #{@base}"
  end
end

puts "Cuadrado"
c1 = Cuadrado.new(5)
c1.lados
c1.perimetro(c1.base, c1.altura)
c1.area(c1.base, c1.altura)
puts "Rectangulo"
r1 = Rectangulo.new(5,10)
r1.lados
r1.perimetro(r1.base, r1.altura)
r1.area(r1.base, r1.altura)
