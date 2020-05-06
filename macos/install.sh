if [[ $(uname) != "Darwin" ]]; then
    exit 0
fi

open macos/custom-profile.terminal
source $(pwd)/macos/set-defaults.sh
