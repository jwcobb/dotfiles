# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

## macOS specific aliases
if test "$(uname)" = "Darwin"; then

    ## Flush the DNS cache Mac OS X 10.7+
	## @link https://support.apple.com/en-us/HT202516
    alias flushdns='sudo killall -HUP mDNSResponder'

    alias copy='pbcopy'
    alias paste='pbpaste'
    alias desktop="cd $HOME/Desktop"
    alias download="cd $HOME/Downloads"
fi

## Laravel Homestead specific aliases
if [ -d "~/Homestead" ]; then

	# Add a function for Homestead
	# @see https://laravel.com/docs/5.8/homestead#daily-usage
	homestead() {
		(cd ~/Homestead && vagrant $*)
	}


	# Launch homestead
	alias hu='homestead up'
	alias hh='homestead halt'

	# Launch homestead and ssh into the box
	#alias work='homestead up && homestead ssh -- -t "cd Sites; /usr/bin/zsh"'
	alias work='~/bin/work'
fi

# An alias for the Behat testing framework
alias behat='vendor/bin/behat'

# An alias for the phpspec testing framework
alias phpspec='vendor/bin/phpspec'

# Composer aliases
alias cda='composer dump-autoload'

# Artisan aliases
alias a='php artisan'
alias al='php artisan list'

# http://calebporzio.com/bash-alias-composer-link-use-local-folders-as-composer-dependancies/
composer-link() {  
    composer config repositories.local '{"type": "path", "url": "'$1'"}' --file composer.json
}






## Laravel aliases
alias pa='php artisan'
alias pal='php artisan list'

alias yrd='yarn run dev'
alias yw='yarn run watch'

# https://superuser.com/a/975878/9551
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'
