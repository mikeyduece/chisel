# require './lib/file_reader'

class Chisel

  attr_reader :text

  def initialize
    @text = File.open("./my_input.markdown").map {|row| row}
      # require "pry"; binding.pry
  end

  def heading
    output = ""
    text.map do |line|
      if line.include?("## ")
        html = line
        output << html.gsub("## ","<h2>")
      elsif line.include?("# ")
        html = line
        output << html.gsub("# ","<h1>")
      end
    end
    output
  end

  def p_tag
    output = ""
    text.map do |line|
      if .include?("\"") #&& text[-1].include?("\"\n")
        output << line.insert(0,"<p>") #&& text.insert(-1, "<p>")
      end
    end
    output
    require "pry"; binding.pry
  end
end
