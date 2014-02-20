require 'sinatra'

set :public_folder, File.dirname(__FILE__)

get '/' do
  erb :index
end

__END__

@@ index
<h1> Visit <a href="/withajax.html">withajax.html</a> exampple</h1>
