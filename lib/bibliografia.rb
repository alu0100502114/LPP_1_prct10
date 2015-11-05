require "bibliografia/version"

# Módulo Bibliográfico
module Bibliografia

  # Clase Referencia para gestionar las de una Bibliografía
  class Referencia
    # Getters + Setters
    attr_accessor :autores

    # Constructor
    def initialize(autores)
      @autores = autores
    end

    # Muestra un autor de la lista
    def print_autor
      count = 0
      lista = ""
      autores.each do |autor|
        lista += autor
        lista += ", " if ++count != autores.size
      end
      lista
    end

    # Para método puts
    def to_s
      "#{print_autor}\n"
    end
  end
end