require 'link_sort'

describe LinkSort do
  context "finding the order" do
    it "should be able to open the challenge map file" do
      expect { LinkSort.find_order }.to_not raise_error
    end
    it "should be able to extract the order from the challenge map" do
      LinkSort.find_order
      expect(LinkSort.step(1)).to eq('mefirst.md')
    end
    it "should be able to tell me the number of lines before the steps start in challenge map" do
      LinkSort.find_order
      expect(LinkSort.empty_steps).to eq(1)
    end
  end
  context "generating the link" do
    it " should be able to generate the link to a step given the step number." do
      LinkSort.find_order
      expect(LinkSort.make_link(1)).to eq("https://github.com/Edward-Pillips/link_sort/blob/master/mefirst.md")
    end
  end
  context "inserting the link" do
    it " should be able to insert a link to the next step for a given step number." do
      #IDK how to test the contents of a file being changed so I'm going to pretend this is the test and do it in IRB
    end
    it " should be able to insert all links in a single command" do
      #as above I'm testing this in IRB until I develop my testing abilities to the point I can test for this.
    end
    it " should remove a link from a file if there is a link previously inserted." do
      #as above I'm testing this in IRB until I develop my testing abilities to the point I can test for this.
    end
  end
end