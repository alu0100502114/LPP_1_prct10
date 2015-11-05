require "bibliografia/version"

# Módulo Bibliográfico
module Bibliografia

  # Clase Referencia para gestionar las de una Bibliografía
  class Referencia
    # Getters + Setters
    attr_accessor :autores, :titulo, :serie, :editorial, :num_edicion, :fecha_publicacion

    # Constructor
    def initialize(autores, titulo, serie, editorial, num_edicion, fecha_publicacion)
      @autores = autores
      @titulo = titulo
      @serie = serie
      @editorial = editorial
      @num_edicion = num_edicion
      @fecha_publicacion = fecha_publicacion
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
      "#{print_autor}\n
       #{titulo}\n
       #{serie}\n
       #{editorial}; #{num_edicion} (#{fecha_publicacion})\n
      "
    end
  end
end
