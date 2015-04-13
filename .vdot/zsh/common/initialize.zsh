#######
# Initialization
###

### Functions

# Create non-exists directory
function v_create_directory() {
  if [[ ! -e $1 ]]; then
    mkdir -p $1
  fi
}

# Source zsh file if exists
function v_source() {
  if [[ -f "$ZSH_ROOT/$1.zsh" ]]; then
    source "$ZSH_ROOT/$1.zsh"
  fi
}

# Source zsh files in order
function v_source_dir() {
  files=("$@")
  dir=${files[1]}
  files=("${files[@]:1}")
  for file in $files
  do
    source "$ZSH_ROOT/$dir/$file.zsh"
  done
  unset files file dir
}



### Do

# Create necessary cache directories
v_create_directory "$V_CACHE"
v_create_directory "$V_CACHE/zsh"
v_create_directory "$V_CACHE/ssh"
v_create_directory "$V_CACHE/less"
v_create_directory "$V_CACHE/autoenv"

export LESSHISTFILE="$V_CACHE/less/lessht"
