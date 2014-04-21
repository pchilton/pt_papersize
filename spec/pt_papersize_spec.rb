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

  it "names random size as Custom" do
    PT::PaperSize.find(120,20,:mm)[:name].should eq('Custom')
  end
end