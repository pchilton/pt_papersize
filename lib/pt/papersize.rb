require 'pt/papersize/version'
require 'pt/papersize/paper_sizes'

module PT
  class PaperSize
    def initialize(width, height)
      @width = width
      @height = height
    end

    def name
      short_edge_pt = [@width,@height].min
      long_edge_pt = [@width,@height].max

      short_edge_mm = (short_edge_pt.to_f / 72.0) * 25.4
      long_edge_mm = (long_edge_pt.to_f / 72.0) * 25.4

      short_edge_floor = short_edge_mm.floor
      short_edge_ceil = short_edge_mm.ceil

      long_edge_floor = long_edge_mm.floor
      long_edge_ceil = long_edge_mm.ceil

      available_sizes = PT::PaperSize::PAPER_SIZES.select do |entry|
        (entry[:width] == short_edge_floor || entry[:width] == short_edge_ceil) && (entry[:height] == long_edge_floor || entry[:height] == long_edge_ceil)
      end

      available_sizes.length > 0 ? available_sizes.first[:name] : 'Custom'
    end
  end
end
