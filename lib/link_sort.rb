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
        return self.tidy(i)
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

  def self.make_link(number)
    line = self.step(number)
    "#{REPO_ADDRESS}#{line}"
  end

  def self.tidy(line)
    while line[0] != "."
      line[0] = ""
    end
    line[0] = ""
    while line[0] == " "
      line[0] = ""
    end
    line
  end

  def self.insert_link(number)
    File.write(self.step(number), "\nLink to next step: #{self.make_link(number + 1)}", mode: "a")
  end

  def self.link_challenges
    self.find_order
    lines = @info.split("\n")
    i = 1
    a_number_of = lines.length - 2 # need to add a method to define the number of lines before the first step.
    a_number_of.times {
      self.insert_link(i)
      i += 1
    }
  end
end