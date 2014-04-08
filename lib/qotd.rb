require_relative "qotd/version"
require_relative "format"

module Qotd

  def self.quote_file
    file = File.join(File.dirname(__FILE__), "quotes/quotes.txt")
    File.read(file)  # => A string of the quotes from the file.
  end

  def self.quotes
    quote_file.split(/\n\n/) # => Individual quotes in an array.
  end

  def self.rand_index
    rand(quotes.length) # => A random index of quotes array.
  end

  def self.quote
    quotes[self.rand_index] # => A random quote.
  end

  def self.color
    "\033[7m" # => Colored background.
  end

  def self.clear
    "\033[0m" # => Reset to normal.
  end

end

