require 'pt/papersize/version'
require 'pt/papersize/paper_sizes'

module PT
  class PaperSize
    def self.find(width, height, units = :pt)
      short_edge = [width, height].min
      long_edge = [width, height].max

      case units
      when :pt, :point, :points
        short_edge_mm = ((short_edge.to_f / 72.0) * 25.4).round
        long_edge_mm = ((long_edge.to_f / 72.0) * 25.4).round
      when :mm, :millimetre, :millimetres
        short_edge_mm = short_edge
        long_edge_mm = long_edge
      when :inch, :inches
        short_edge_mm = (short_edge.to_f * 25.4).round
        long_edge_mm = (long_edge.to_f * 25.4).round
      end

      available_sizes = PT::PaperSize::PAPER_SIZES.select do |entry|
        (short_edge_mm == entry[:width]) && (long_edge_mm == entry[:height])
      end

      available_sizes.length > 0 ? available_sizes.first : { name: 'Custom', width: short_edge_mm, height: long_edge_mm, units: :mm}
    end
  end
end
