# Punto 1
class Usuario
# Punto 5
    attr_accessor :nombre, :cuenta_bancaria
    def initialize(nombre,cuenta_bancaria)
        @nombre = nombre
        @cuenta_bancaria = cuenta_bancaria
    end

# Punto 6
    def saldo_total
        total = 0
        @cuenta_bancaria.map {|x| x.saldo}.sum
    end
end

# Punto 1,2 y 3
class CuentaBancaria
    attr_accessor :nombre_banco, :numero_cuenta, :saldo
    def initialize (nombre_banco, numero_cuenta, saldo = 0)
        @nombre_banco = nombre_banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end
     
    def transferir (monto, cuenta_destino)
        @saldo -= monto 
        cuenta_destino.saldo += monto 
    end
 end
 
 # Punto 4
 cuenta1 = CuentaBancaria.new("Banco Estado", 18736888, 5000)
 cuenta2 = CuentaBancaria.new("Banco BCI", 7715761788, 5000)
 cuenta1.transferir(5000, cuenta2)
 puts cuenta1.saldo
 puts cuenta2.saldo