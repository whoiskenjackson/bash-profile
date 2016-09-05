#------------------ COLORS
PS1="[\[\033[36m\]\u\[\033[37m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]]$ "

#------------------ CD Finder
function cdfinder()
{
	cd "$(osascript -e 'tell application "Finder"' \
	-e 'set myname to POSIX path of (target of window 1 as alias)' \
	-e 'end tell' 2>/dev/null)"
}

#------------------ CSS MINIFIER
function cssmin()
{
	echo "minifying $1.css to $1.min.css"
	curl -X POST -s --data-urlencode 'input@'$1'.css' http://cssminifier.com/raw > $1.min.css
}

#------------------ JS MINIFIER
function jsmin()
{
	in=$1.js
	out=$1.min.js

	echo "minifying $1.js to $1.min.js"

	curl -s \
	  -d compilation_level=SIMPLE_OPTIMIZATIONS \
	  -d output_format=text \
	  -d output_info=compiled_code \
	 --data-urlencode "js_code@${in}" \
	 http://closure-compiler.appspot.com/compile \
	  > $out
}

#------------------ MY IP
function myIp(){
	en0=`ipconfig getifaddr en0`
	en1=`ipconfig getifaddr en1`
	if [ -z "$en0" ]; then
		echo $en1;
	else
		echo $en0;
	fi 
}

#------------------ COLORS
PS1="[\[\033[36m\]\u\[\033[37m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]]$ "

#------------------ Reload

alias reload="source ~/.bash_profile"

#------------------ CD Aliases

alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

#------------------ Other Aliases

alias websites="cd /Applications/XAMPP/xamppfiles/htdocs/websites"
alias github="cd /Applications/XAMPP/xamppfiles/htdocs/websites/github"
alias st="git status"
