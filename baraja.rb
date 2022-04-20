require_relative 'carta.rb'

class Baraja
    attr_accessor :cartas
    def initialize (cartas)
        @cartas = []
        ["C","D","E","T"].each do |pinta|
            13.times do |numero|
                num = numero + 1
                @cartas.push(Carta.new(num,pinta))
            end
        end
    end

    def barajar
        @cartas.shuffle!
    end

    def sacar
        carta = @cartas.pop
        puts "#{carta.pinta}#{carta.numero}"
    end

    def repartir_mano
        mano = []
        for i in 0..4
            mano.push(sacar)
        end
        return mano
    end

end
carta = []
baraja = Baraja.new(carta)
puts baraja.barajar
puts baraja.repartir_mano