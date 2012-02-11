#EBR-Boilerplate

This boilerplate is meant to be used in lightweight web-apps. It is however possible to extend the 

Being a fan of [Express.js](http://expressjs.com/), [Backbone.js](http://documentcloud.github.com/backbone/), [Require.js](http://requirejs.org/) and [CoffeeScript](http://coffeescript.org/)), I made this boilerplate to use in my future projects.

### Express.js setting in this boilerplate

In this Express.js setup, I'm using Jade and Stylus. If you want to use something else instead, remember to change the configurations in coffee/app.coffee

##How to use?

The first thing to do is to download the boilerplate. In the terminal, use this command:

    git clone git://github.com/johnsj/ERB-Boilerplate.git

Next, you install the dependencies:

    npm install

Now you should be ready to create some awesome web-apps :)

### Using CoffeeScript (Optional)

The intention was NOT to edit the `.js` files. Only edit the `.coffee` files inside the root coffee folder. However, not every library/framework is available in CoffeeScript. That's why I made is possible to use good old javascript, without any hassle.

In order to keep things simple, I suggest that you open a terminal, and type:

    /path/to/erb-boilerplate/coffee -o ./ -cbw coffee/

Notice that I'm using the -b flag. If you want the top-level function safety-wrapper,
just remove the 'b'.

By running this command, all of the coffee-files will be compiled and output to the root folder, maintaining the structure.

## TODO-list

Code comments/documentation
Documentation
- (if needed, although it's all based on known frameworks/libraries)

## NOTE

This is very much a work in progress. It would be helpful, if you try this out, and send me an email with your opinions :)

## License

©2011 John Schwartz Jacobsen and available under the [MIT license](http://www.opensource.org/licenses/mit-license.php):

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.