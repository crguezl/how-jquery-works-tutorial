require 'sinatra'

set :public_folder, File.dirname(__FILE__)

get '/' do
  erb :index
end

__END__

@@ index
<h1> Visit <a href="/withajax.html">withajax.html</a> exampple</h1>
<h1> Visit <a href="/withget.html">withget.html</a> exampple</h1>
<h1> Visit <a href="/withfileapi.html">withfileapi.html</a> exampple</h1>

@@layout
  <!DOCTYPE HTML>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>textarea and files</title>
  </head>
  <body>
    <%= yield %>
  </body>
  </html>
