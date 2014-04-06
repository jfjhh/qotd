require_relative "qotd/version"

module Qotd

  def self.quote_file
    File.read('quotes/quotes.txt')  # => A string of the quotes from the file.
  end

  def self.quotes
    quote_file.split(/\n\n/) # => Individual quotes in an array.
  end

  def self.rand_index
    rand(quotes.length) # => A random index of quotes array.
  end

  def self.quote
    quotes[rand_index] # => A random quote.
  end

  def self.color
    "\033[7m"
  end

  def self.clear
    "\033[0m"
  end

  def self.put_quote
    puts "%s%s%s" % [
      self.color,
      self.quote,
      self.clear
    ]
  end

end

