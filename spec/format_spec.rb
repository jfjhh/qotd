require_relative "../lib/format.rb"
require "rspec"

describe "Format" do

  str = "Hello World!"
  multi_line_str = "Foo\nBar\nBaz"

  it "should return spaces up until column 80" do
    Format.to_80('X' * 10).should == ' ' * 70 # => 10 'X's + 70 spaces => 80
  end

  it "should add spaces to either end of string" do
    Format.space(str).should == " Hello World! "
  end

  it "should add multiple spaces to either end of string" do
    Format.space(str, 2).should == "  Hello World!  "
  end

  it "should add spaces and padding to a multi-line string" do
    expected = "%s%s%s" % [
      " Foo " << Format.to_80(" Foo ") << "\n",
      " Bar " << Format.to_80(" Bar ") << "\n",
      " Baz " << Format.to_80(" Baz ")
    ]
    Format.padding(multi_line_str).should == expected << Format.to_80(expected)
  end

  it "should add multiple spaces and padding to a multi-line string" do
    expected = "%s%s%s" % [
      "  Foo  " << Format.to_80("  Foo  ") << "\n",
      "  Bar  " << Format.to_80("  Bar  ") << "\n",
      "  Baz  " << Format.to_80("  Baz  ")
    ]
    Format.padding(multi_line_str, 2).should == expected << Format.to_80(expected)
  end

end

