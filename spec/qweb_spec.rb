require_relative "spec_helper"

describe "Qweb" do
  include Rack::Test::Methods

  it "says hello world" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq("Hello World!")
  end

end

