require_relative "qotd"
require_relative "format"
require "sinatra"
require "erb"

get '/' do
  qarray = params[:quote] || Format.to_array(Qotd.quote)
  erb :fancy, :locals => {:qarray => qarray}
end

