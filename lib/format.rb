require_relative "qotd"

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

  def self.to_array(quote)
    quote.split(/\n/)
  end

  def self.format_quote(quote)
    message = self.padding(quote, 2) # => Add padding to the quote.
    space = ' ' * 80 # => Filler to highlight.

    [
      Qotd.color,
      space,
      message,
      space,
      Qotd.clear,
    ]
  end

  def self.padding(str, spaces = 1)
    qarray = self.to_array(str)

    if qarray.length > 1
      pstr = ""
      last = qarray.length - 1

      (0...last).each do |line|
        text = self.space(qarray[line], spaces) 
        filler = self.to_80(text)

        pstr << text << filler << "\n"
      end

      text = self.space(qarray[last], spaces)
      pstr << text << self.to_80(text)

      return pstr
    else
      text = self.space(str, spaces)
      return text << self.to_80(text)
    end
  end

end

