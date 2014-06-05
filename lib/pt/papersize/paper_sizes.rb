module PT
  class PaperSize
    PAPER_SIZES = [
      # ISO paper sizes
      { name: 'A0', standard: 'ISO216', width: 841, height: 1189 },
      { name: 'A1', standard: 'ISO216', width: 594, height: 841 },
      { name: 'A2', standard: 'ISO216', width: 420, height: 594 },
      { name: 'A3', standard: 'ISO216', width: 297, height: 420 },
      { name: 'A4', standard: 'ISO216', width: 210, height: 297 },
      { name: 'A5', standard: 'ISO216', width: 148, height: 210 },
      { name: 'A6', standard: 'ISO216', width: 105, height: 148 },
      { name: 'A7', standard: 'ISO216', width: 74, height: 105 },
      { name: 'A8', standard: 'ISO216', width: 52, height: 74 },
      { name: 'A9', standard: 'ISO216', width: 37, height: 52 },
      { name: 'A10', standard: 'ISO216', width: 26, height: 37 },

      { name: 'B0', standard: 'ISO216', width: 1000, height: 1414 },
      { name: 'B1', standard: 'ISO216', width: 707, height: 1000 },
      { name: 'B2', standard: 'ISO216', width: 500, height: 707 },
      { name: 'B3', standard: 'ISO216', width: 353, height: 500 },
      { name: 'B4', standard: 'ISO216', width: 250, height: 353 },
      { name: 'B5', standard: 'ISO216', width: 176, height: 250 },
      { name: 'B6', standard: 'ISO216', width: 125, height: 176 },
      { name: 'B7', standard: 'ISO216', width: 88, height: 125 },
      { name: 'B8', standard: 'ISO216', width: 62, height: 88 },
      { name: 'B9', standard: 'ISO216', width: 44, height: 62 },
      { name: 'B10', standard: 'ISO216', width: 31, height: 44 },

      { name: 'C0', standard: 'ISO216', width: 917, height: 1297 },
      { name: 'C1', standard: 'ISO216', width: 648, height: 917 },
      { name: 'C2', standard: 'ISO216', width: 458, height: 648 },
      { name: 'C3', standard: 'ISO216', width: 324, height: 458 },
      { name: 'C4', standard: 'ISO216', width: 229, height: 324 },
      { name: 'C5', standard: 'ISO216', width: 162, height: 229 },
      { name: 'C6', standard: 'ISO216', width: 114, height: 162 },
      { name: 'C7', standard: 'ISO216', width: 81, height: 114 },
      { name: 'C8', standard: 'ISO216', width: 57, height: 81 },
      { name: 'C9', standard: 'ISO216', width: 40, height: 57 },
      { name: 'C10', standard: 'ISO216', width: 28, height: 40 },

      # DIN476 (ISO precursor)
      { name: '4A0', standard: 'DIN476', width: 1682, height: 2378 },
      { name: '2A0', standard: 'DIN476', width: 1189, height: 1682 },

      # Other metric sizes
      { name: 'DL', width: 99, height: 210 },
      { name: 'DLE', width: 110, height: 220 },
      { name: 'F4', width: 210, height: 330 },
      { name: 'RA0', width: 841, height: 1189 },
      { name: 'RA1', width: 610, height: 860 },
      { name: 'RA2', width: 430, height: 610 },
      { name: 'RA3', width: 305, height: 430 },
      { name: 'RA4', width: 215, height: 305 },
      { name: 'SRA0', width: 900, height: 1280 },
      { name: 'SRA1', width: 640, height: 900 },
      { name: 'SRA2', width: 450, height: 640 },
      { name: 'SRA3', width: 320, height: 450 },
      { name: 'SRA4', width: 225, height: 320 },
      { name: 'A3+', width: 29, height: 483 },
    ]
  end
end



