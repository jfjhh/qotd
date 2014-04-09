require_relative "spec_helper"

describe "Qweb" do
  include Rack::Test::Methods

  it "loads the quote page" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Quote of the Day")
  end

end

