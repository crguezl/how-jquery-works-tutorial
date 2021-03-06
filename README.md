There are five branches:

      [~/javascript/jquery/how-jquery-works-tutorial(master)]$ git branch 
        getallparams # shows the use of jQuery AJAX get method with all its params
        heroku       # shows how to deploy the app in Heroku
        getscript
      * master
        separated

* `master` shows how to use jQuery [`get`](http://api.jquery.com/jquery.get/) on the client side and [Sinatra](http://www.sinatrarb.com/) on the server side
* `getallparams` shows how to use jQuery [`get`](http://api.jquery.com/jquery.get/) 
  exemplifying how to use all the `get` params.

  There is a version using *express.js* instead of *Sinatra* in this branch composed of these files:

                gulpfile.js                  
                app.js                       
                package.json
                views/index.ejs
                views/layout.ejs
                README.md                    

* `getscript` shows how to use jQuery [`get`](http://api.jquery.com/jquery.get/) with
`dataType` `script`
* `separated` shows how to put the views/templates in separated files

## See

* [Using layouts in EJS using express-ejs-layouts](http://blog.hugeaim.com/2013/01/20/using-layouts-in-ejs-using-express-ejs-layouts/)
