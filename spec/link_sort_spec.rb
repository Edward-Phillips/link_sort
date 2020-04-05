require 'link_sort'

describe LinkSort do
  context "finding the order" do
    it "should be able to open the challenge map file" do
      expect { LinkSort.find_order }.to_not raise_error
    end
    it "should be able to extract the order from the challenge map" do
      LinkSort.find_order
      expect(LinkSort.step(1)).to eq('1.mefirst.md')
    end
  end
  context "generating the link" do
    it " should be able to generate the link to a step given the step number." do
      LinkSort.find_order
      expect(LinkSort.make_link(1)).to eq("https://github.com/Edward-Pillips/link_sort/blob/master/mefirst.md")
    end
  end
end