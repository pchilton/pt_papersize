require 'pt/papersize/version'

module PT
  class PaperSize
    def initialize(width, height)
      @width = width
      @height = height
    end

    def name
      'Custom'
    end
  end
end
