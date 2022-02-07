# Dock
#
# Set the default Dock size
defaults write com.apple.dock tilesize -int 42
# Dissable automatically rearranging Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false
# Don't show recent applications in Dock
defaults write com.apple.dock show-recents -bool false
# Minimize windows using the Scale effect
defaults write com.apple.dock mineffect -string "scale"

# Trackpad
#
# Enable tapping the trackpad to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Finder
#
# View as columns
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
# Show path bar
defaults write com.apple.finder ShowPathbar -bool true
# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# Prevent `.DS_Store` files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# System Preferences
#
# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true
# Show battery percentage in menu bar
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Safari
#
# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Kill affected apps

for app in "Dock" "Finder"; do
	killall "${app}" > /dev/null 2>&1
done

# Complete

echo "Everything's setup! Now, restart your computer."
