require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/starterkit'

get '/' do
  erb :index
end

get '/chuchu' do
  if request.xhr? # is an ajax request
    "hello world!"
  else 
    erb :tutu
  end
end

