require 'link_sort'

describe LinkSort do
  context "finding the order" do
    it "should be able to open the challenge map file" do
      expect { LinkSort.find_order }.to_not raise_error
    end
    it "should be able to extract the order from the challenge map" do
      expect(LinkSort.step(1)).to eq('1. mefirst.md')
    end
  end
end