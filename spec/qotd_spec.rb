require_relative "../lib/qotd.rb"
require "rspec"

describe "Qotd" do

  it "should return the quotes file" do
    file = File.read(File.join(File.dirname(File.dirname(__FILE__)), "lib/quotes/quotes.txt"))
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

  it "should return a colored quote" do
    q = Qotd.quote
    expected = "%s%s%s" % [
      Qotd.color,
      q,
      Qotd.clear
    ]
    Qotd.colored_quote(q).should == expected
  end

end

