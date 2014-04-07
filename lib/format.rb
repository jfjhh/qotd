module Format

  def self.space(str, spaces = 1)
    padding = ' ' * spaces

    return "%s%s%s" % [
      padding,
      str,
      padding
    ]
  end

  def self.to_80(str)
    chars = 80 - str.length # => length left to 80th char in line.
    padding = ""

    (1..chars).each do |i|
      padding << ' '
    end

    return padding
  end

  def self.padding(str, spaces = 1)
    lines = str.split(/\n/)

    if lines.length > 1
      pstr = ""
      last = lines.length - 1

      (0...last).each do |line|
        text = self.space(lines[line], spaces) 
        filler = self.to_80(text)

        pstr << text << filler << "\n"
      end

      text = self.space(lines[last], spaces)
      pstr << text << self.to_80(text)

      return pstr
    else
      text = self.space(str, spaces)
      return text << self.to_80(text)
    end
  end

end

