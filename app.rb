require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/starterkit'

get '/' do
  erb :index
end

get '/chuchu' do
  "hello world!"
end

__END__

@@index
<!DOCTYPE html>
<html>
  <head>
      <meta charset="utf-8" />
      <title>Demo</title>
  </head>
  <body>
      <a href="http://jquery.com/">jQuery</a>
      <div class="result"></div>
      <script src="jquery.js"></script>
      <script>
      $( document ).ready(function() {
          $( "a" ).click(function( event ) {
              event.preventDefault();
              $.get( "/chuchu", function( data ) {
                $( ".result" ).html( data );
                alert( "Load was performed." );
              });
          });
      });
      </script>
  </body>
</html>
