require 'pt/papersize'

describe PT::PaperSize do
  it "names ISO A4" do
    pt_papersize = PT::PaperSize.new(842,595)
    pt_papersize.name.should eq('A4')
  end

  it "names random size as Custom" do
    pt_papersize = PT::PaperSize.new(120,20)
    pt_papersize.name.should eq('Custom')
  end
end