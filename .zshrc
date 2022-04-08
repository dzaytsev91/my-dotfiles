# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/d-zaytsev/.oh-my-zsh"
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/projects/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin
export PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
export GO111MODULE=auto
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
export ICU_ROOT=$(brew --prefix icu4c)
export TK_SILENCE_DEPRECATION=1
export NPROCS=6
export PATH=/usr/local/bin/node@8/:$PATH


export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# Uncomment the following line to use case-sensitive completion.o
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"
# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13
export ZSH_COMMAND_TIME_MIN_SECONDS=3
export ZSH_COMMAND_TIME_MSG="Execution time: %s sec"
export ZSH_COMMAND_TIME_COLOR="cyan"
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=(
  git
  dotenv
  macos
  zsh-autosuggestions
  pip
  python
  brew
  redis-cli
  docker
  brew
  copyfile
  encode64
  pep8
  pylint
  screen
  ssh-agent
  vscode
  zsh-syntax-highlighting
  extract
  web-search
)
source $ZSH/oh-my-zsh.sh
# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.aliases
pa () {
    python -c "import uuid; print(uuid.UUID('$1').int % 1024)"
};
#История становится общей между всеми сессиями / терминалами.
unsetopt share_history
#Добавляет в историю время выполнения команды.
setopt extended_history
#Сообщать при изменении статуса фонового задания
setopt NOTIFY
# если набрали путь к директории без комманды CD, то перейти
setopt AUTO_CD
# Удалять из файл истории пустые строки
setopt  HIST_REDUCE_BLANKS
# исправлять неверно набранные комманды
#setopt CORRECT_ALL
unsetopt CORRECT_ALL
# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/Users/d-zaytsev/yandex-cloud/path.bash.inc' ]; then source '/Users/d-zaytsev/yandex-cloud/path.bash.inc'; fi
function cd() {
#  if [[ -d ./venv ]] ; then
#    deactivate
#  fi
  builtin cd $1
  if [[ -d ./venv ]] ; then
    . ./venv/bin/activate
  fi
}
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

eval $(thefuck --alias)
#eval $(docker-machine env dev)
