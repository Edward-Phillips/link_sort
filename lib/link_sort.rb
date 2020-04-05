class LinkSort
  def self.find_order
    file = File.open("00_challenge_map.md")
    @info = file.read
    file.close
  end
  def self.step(number)
    lines = @info.split("\n")
    for i in lines do
      p i.chars[0]
       if i.chars[0] == number.to_s
        return i
       end
    end
  end
end