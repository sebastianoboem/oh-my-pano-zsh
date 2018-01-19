# GenPW - custom password generator function
# Usage: genpw 20 (without special characters) or genpw 20 char (with special characters)
# Required pwgen, install with: brew install pwgen
# For further help: pwgen -h
#!/bin/bash
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

# Enter sage themes folder
sage() {
  if [ -z $2 ]; then
    cd ~/Projects/$1/$1.it/web/app/themes/sage
  else
    cd ~/Projects/$1/$1.$2/web/app/themes/sage
  fi
}

# Enter themes folder
themes() {
  if [ -z $2 ]; then
    cd ~/Projects/$1/$1.it/web/app/themes
  else
    cd ~/Projects/$1/$1.$2/web/app/themes
  fi
}

# Enter bedrock themes folder
bedrock(){
  if [ -z $2 ]; then
    cd ~/Projects/$1/$1.it
  else
    cd ~/Projects/$1/$1.$2
  fi
}

# Enter trellis themes folder
trellis(){
  cd ~/Projects/$1/_trellis-$1
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

# Android dDebug Bridge
alias adb='~/Library/Android/sdk/platform-tools/adb'

# Python
alias py="python"

# Laravel
alias run='php artisan'

# Yarn
alias build='yarn run build'
alias start='yarn run start'
alias build-production='yarn run build:production'

# Ansible Version Changer Python Function
function current_ansible_version {
python - <<END
import ansible
print ansible.__version__
END
}

# Display as the first line in zsh shell
echo Current ansible version: $(current_ansible_version)

# Ansible Version Changer zsh Function
switchto(){
  ANSV=$(current_ansible_version)
  echo Attempt to uninstall ansible version: $ANSV...
  pip uninstall ansible==$ANSV -q
  wait
  echo Successfully uninstalled ansible-$ANSV
  echo Installing ansible version: $1
  pip install ansible==$1 -q
  wait
  echo Successfully installed ansible-$1
}

# Run server trellis command
alias provision='ansible-playbook server.yml -e env=production'
