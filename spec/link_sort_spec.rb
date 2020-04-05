require 'link_sort'

describe LinkSort do
  context "finding the order" do
    it "should be able to open the challenge map file" do
      expect { LinkSort.find_order }.to_not raise_error
    end
  end
end