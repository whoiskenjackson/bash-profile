##My IP

My IP is a `.bash_profile` script that will allow you to grab your current IP Address.

###Usage

  1. Open up Terminal.

  2. Type the `myIp` command.
  ```
  $ myIp
  ```

  3. This should output your current IP Address. Something similar to this: `10.100.155.87`.


##CD Finder

CD Finder is a `.bash_profile` script that will allow you to quickly navigate to the open Finder location inside of your Terminal.

###Usage

  1. Open up Terminal.

  2. Open up a Finder window and go to any location you'd like to navigate to. For example, your Desktop.

  3. Inside of Terminal type the `cdfinder` command:
  ```
  $ cdfinder
  ```

  4. Terminal should have no changed directories to your open finder window. So you should now be located in a directory similar to this example: `/Volumes/User Data/Users/username/Desktop`.


##CSS Minifier

CSS Minifier is a `.bash_profile` script that will allow you to quickly minify your css for production.

###Usage

  1. Open up Terminal and navigate to a CSS file you would like to minify.

  2. Simply type the cssmin followed by the file you want to minify. For example, if you'd like to minify the file `style.css`:

	```
	$ cssmin style
	```

  3. This will output a file called `style.min.css`.

##JS Minifier

JS Minifier is a `.bash_profile` script that will allow you to quickly minify your js for production.

###Usage

  1. Open up Terminal and navigate to a JS file you would like to minify.

  2. Simply type the jsmin followed by the file you want to minify. For example, if you'd like to minify the file `main.js`:

	```
	$ jsmin main
	```

  3. This will output a file called `main.min.js`.