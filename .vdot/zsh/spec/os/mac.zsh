# Fix tmux paths
if [ -x /usr/libexec/path_helper ]; then
    PATH=""
    eval `/usr/libexec/path_helper -s`
fi

# Check brew & gun tools
if [[ "$(command -v brew)" == "" ]]; then
    echo "ERROR: Homebrew not found."
else
    if [[ "$(command -v gdate)" == "" ]]; then
        echo "ERROR: coreutils not found."
    else
        local GPATH="$(brew --prefix coreutils)/libexec"
        export PATH="$GPATH/gnubin:$PATH"
        export MANPATH="$GPATH/gnuman:$MANPATH"
    fi
    # Check other gnu commands
    local PKGS PKG
    PKGS=("findutils" "gnu-indent" "gnu-sed" "gnutls" "grep")
    for PKG in "${PKGS[@]}"; do
        if ! $(brew list | grep $PKG > /dev/null); then
            echo "ERROR: $PKG not found, execute 'brew install $PKG --default-names'"
        fi
    done
fi

# Service
alias sv='sudo brew services'
