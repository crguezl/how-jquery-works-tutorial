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
        var param = "chuchu param";
        var handler = function( data, textStatus, jqXHR, param ) {
          $( ".result" ).html( data );
          alert( "Load was performed.\n"+
                 "$data = "+data+
                 "\ntextStatus = "+textStatus+
                 "\njqXHR = "+jqXHR+
                 "\nparam = "+param );
        };
        $( document ).ready(function() {
            $( "a" ).click(function( event ) {
                event.preventDefault();
                $.get( "/chuchu", function(data, textStatus, jqXHR ) {
                  handler( data, textStatus, jqXHR, param);
                });
            });
        });
      </script>
  </body>
</html>