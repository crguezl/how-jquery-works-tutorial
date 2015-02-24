require 'sinatra'
require 'sinatra/reloader' if development?
require 'pp'

set :public_folder, File.dirname(__FILE__) + '/starterkit'

get '/' do
  erb :index
end

get '/demo_ajax_script.js' do
  pp env
  if request.xhr? # is an ajax request
    "alert('This JavaScript alert was loaded by AJAX');"
  else 
   %q{Not an AJAX request!}
  end
end

__END__

@@index

<!DOCTYPE html>
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
      /*
      $.getScript("demo_ajax_script.js");
      */
      $.get( "/demo_ajax_script.js", function( data ) {
          //console.log(data);
        }, 'script');
    });
});
</script>
</head>
<body>

<button>Use Ajax to get and then run a JavaScript</button>
</body>
</html>

