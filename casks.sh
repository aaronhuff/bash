## declare an array variable
## can be on the same line or on multi-lines
declare -a arr=("zsh" "vscodium" "discord" "htop" "audius" "authy" "bitwarden" "brave-browser" 
  "docker" "google-drive" "google-chrome" "grammarly" "grammarly-desktop" "nordvpn" "notion"
  "powershell" "spotify" "vlc"
)

## now loop through the above array with use of the loop-variable `i`
for i in "${arr[@]}"
do
   echo "Installing $i..."
   brew install $i
done
