require 'pt/papersize'

describe PT::PaperSize do
  it "names ISO A4 from PostScript points" do
    PT::PaperSize.find(595,842,:pt)[:name].should eq('A4')
    PT::PaperSize.find(842,595,:pt)[:name].should eq('A4')
  end

  it "names SRA3 from various units" do
    PT::PaperSize.find(320,450,:mm)[:name].should eq('SRA3')
    PT::PaperSize.find(907,1276,:pt)[:name].should eq('SRA3')
    PT::PaperSize.find(12.6,17.7,:inch)[:name].should eq('SRA3')
  end

  it "name different standards across types" do
    PT::PaperSize.find(595,842,:pt)[:standard].should eq('ISO216')
    PT::PaperSize.find(1682,2378,:mm)[:standard].should eq('DIN476')
    PT::PaperSize.find(907,1276,:mm)[:standard].should eq(nil)
  end

  it "names JIS B5 from PostScript mm" do
    PT::PaperSize.find(182,257,:mm)[:name].should eq('B5')
    PT::PaperSize.find(182,257,:mm)[:standard].should eq('JIS')
    PT::PaperSize.find(257,182,:mm)[:name].should eq('B5')
    PT::PaperSize.find(257,182,:mm)[:standard].should eq('JIS')
  end

  it "names random size as Custom" do
    PT::PaperSize.find(120,20,:mm)[:name].should eq('Custom')
  end
end
