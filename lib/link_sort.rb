class LinkSort
  CHALLENGE_MAP = "00_challenge_map.md"
  REPO_ADDRESS = "https://github.com/Edward-Pillips/link_sort/blob/master/"
  def self.find_order
    file = File.open(CHALLENGE_MAP)
    @info = file.read
    file.close
  end

  def self.step(number)
    lines = @info.split("\n")
    for i in lines do
       if self.step_number(i) == number
        return i
       end
    end
  end
  
  def self.step_number(linestring)
    the_dot = linestring.split("").index(".")
    if the_dot == nil
      return 0 
    end
    numberlength = linestring.index(".")
    result = linestring[0,numberlength].to_i
    result
  end
end