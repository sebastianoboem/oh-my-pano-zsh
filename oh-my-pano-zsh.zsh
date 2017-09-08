# GenPW - custom password generator function
# Usage: genpw 20 (without special characters) or genpw 20 char (with special characters)
# Required pwgen, install with: brew install pwgen
# For further help: pwgen -h
genpw() {
  if [[ $2 == "char" ]]; then
    pwgen -Bcnsvy $1 1 | tr -d "\n" | pbcopy;
  else
    pwgen -Bcnsv $1 1 | tr -d "\n" | pbcopy;
  fi;
  echo -e "$(pbpaste)\nCopied to clipboard!"
}

# macOS
alias rm="${aliases[rm]:-rm} -vi"
alias cp="${aliases[cp]:-cp} -vi"
alias mv="${aliases[mv]:-mv} -vi"
alias grep="grep --color=auto"
alias rmds="find . -name '*.DS_Store' -type f -delete"
alias hosts="st /etc/hosts"
alias exports="st /etc/exports"
alias resetls="/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -seed -r -f -v -domain local -domain user -domain system"
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;"
alias printdropboxconflict="find ~/Dropbox -path '*(Copia in conflitto di * [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*' -print"
alias cleandropboxconflict="find ~/Dropbox -path '*(Copia in conflitto di * [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]*' -exec rm -f {} \;"

# general folder
alias home="cd ~"

# Enter themes folder or specific theme folder
theme() {
  cd /Applications/MAMP/htdocs/$1/wp-content/themes/$2
}

# Oh My Zsh and Oh My Pano Zsh
alias ohmyzsh="cd ~/.oh-my-zsh"
alias ohmypanozsh="cd ~/.oh-my-pano-zsh/ && st oh-my-pano-zsh.zsh"

# Vagrant
alias vau="vagrant up"
alias vah="vagrant halt"
alias vas="vagrant status"
alias var="vagrant reload"
alias vaup="vagrant up --provision"
alias vass="vagrant ssh"
alias vabu="vagrant box update"
alias vabak="cp -R .vagrant .vagrantbak"
alias vad="vagrant destroy"

# Themes folder aliases
alias bedsage="cd web/app/themes/sage"
alias bedshaba="cd web/app/themes/shaba"
alias wpsage="cd wp-content/themes/sage"
alias wpshaba="cd wp-content/themes/shaba"

# Davide Maule aliases
alias _davidemaule-trellis="cd ~/Projects/davidemaule/_trellis-davidemaule.com"
alias davidemaule="cd ~/Projects/davidemaule/davidemaule.com"
alias davidemaule-minerva="cd ~/Projects/davidemaule/minerva.davidemaule.com"

# Android dDebug Bridge
alias adb='~/Library/Android/sdk/platform-tools/adb'

# Slate
alias bld='bundle exec middleman build --clean'