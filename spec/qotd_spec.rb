require_relative "../lib/qotd"
require_relative "../lib/format"
require "rspec"

describe "Qotd" do

  it "should return the quotes file" do
    dir = File.dirname(File.dirname(__FILE__))
    file = File.read(File.join(dir, "lib/quotes/quotes.txt"))
    Qotd.quote_file.should == file
  end

  it "should return a quotes array" do
    Qotd.quotes.should == Qotd.quote_file.split(/\n\n/)
  end

  it "should return a random index in quotes" do
    index = Qotd.rand_index
    length = Qotd.quotes.length
    index.should <= length
    index.should >= 0
  end

  it "should return a random quote" do
    Qotd.quotes.should include Qotd.quote
  end

  it "should return a color code" do
    Qotd.color.should == "\033[7m"
  end

  it "should return a clearing color code" do
    Qotd.clear.should == "\033[0m"
  end

  it "should return a formatted quote" do
    quote = "Hello World!"
    space = ' ' * 80 # => Filler to highlight.
    message = Format.padding(quote, 2) # => Add padding to the quote.

    expected = [
      Qotd.color,
      space,
      message,
      space,
      Qotd.clear,
    ]

    Format.format_quote(quote).should == expected
  end

end

