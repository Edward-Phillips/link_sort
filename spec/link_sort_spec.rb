require 'link_sort'

describe LinkSort do
  context "finding the order" do
    it "should be able to open the challenge map file" do
      expect(LinkSort.find_order). to eq(" LINK ORDER:
 1. mefirst.md
 2. mesecond.md
 3. ozymandias.md
 4. shhhnonames.md")
    end
  end
end