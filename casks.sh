## declare casks array variable
declare -a casks=("zsh" "vscodium" "discord" "htop" "authy" "bitwarden" "brave-browser" 
  "docker" "google-drive" "google-chrome" "grammarly" "grammarly-desktop" "nordvpn" "notion"
  "spotify" "vlc"
)

## loop array to install casks
for i in "${casks[@]}"
do
   echo "Installing $i..."
   brew install $i
done
