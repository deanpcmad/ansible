if status is-interactive
# Commands to run in interactive sessions can go here

  ~/.rbenv/bin/rbenv init - fish | source
  fish_add_path -m ~/.rbenv/shims/

  fish_add_path -m ~/.local/bin/

  alias s="subl ."

  # Rails
  alias be="bundle exec"
  alias bi="bundle install -j $(nproc)"
  alias rd="bin/dev"
  alias rs="bin/rails server"
  alias dbm="bin/rails db:migrate"
  alias dbr="bin/rails db:rollback"
  alias rg="bin/rails generate"
  alias rc="bin/rails console"

  # Starts the docker-hoster container
  alias dockerhoster="docker run -d -v /var/run/docker.sock:/tmp/docker.sock -v /etc/hosts:/tmp/hosts dvdarias/docker-hoster"

  # Run Docker Compose dev
  alias dcdev="docker compose -f docker-compose.dev.yml up"

  # Jekyll
  alias js="be jekyll s -H 0.0.0.0"

  # Git
  alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
  alias gd='git diff'
  alias ga='git add'
  alias gc='git commit'
  alias gca='git commit -a'
  alias gcam='git commit -am'
  alias gco='git checkout'
  alias gb='git branch'
  alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
  alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
  alias gsh="git rev-parse --short HEAD"
  alias gr="git remote -v"

  # Curl
  alias curlxml="curl -H 'Accept: application/xml' -H 'Content-type: application/xml' "
  alias curljson="curl -H 'Accept: application/json' -H 'Content-type: application/json' "

  # vhosts
  alias hosts='sudo nano /etc/hosts'

  # untar
  alias untar='tar xvf'

  # Pipe my public key to my clipboard.
  alias pubkey="more ~/.ssh/id_rsa.pub | xclip -selection clipboard | echo '=> Public key copied to pasteboard.'"

  alias ytmp4="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"
end
