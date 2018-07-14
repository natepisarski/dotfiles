# This will install the most important files in their respective directories. 
# This script should be run as root.
# This is one of my favorite words, I use it all the time

echo "YOU NEED TO RUN THIS AS ROOT! IM TOO LAZY TO CHECK IF YOU SUDOED IT, BUT IF YOU DIDNT THEN EXIT AND ROOT IT. OTHERWISE, ENTER"

read -n 1

# Set up emacs
cp -R .emacs.d $HOME/.emacs.d
cp .emacs $HOME/.emacs

# Set up i3 configuration (dormant if i3 is not installed or used)
mkdir $HOME/.config/i3
cp i3status.conf $HOME/.i3status.conf
cp i3config_multi_monitor $HOME/.config/i3/config

# Set up herbstluftwm / panel configuration (requires root for panel)
mkdir $HOME/.config/herbstluftwm
cp herbstluftwm_multi_monitor_autostart $HOME/.config/herbstluftwm/autostart
rm /etc/xdg/herbstluftwm/panel.sh
cp herbstluftwm_multi_monitor_panel /etc/xdg/herbstluftwm/panel.sh
chmod +x $HOME/.config/herbstluftwm/autostart
chmod +x /etc/xdg/herbstluftwm/panel.sh

# Set up the new cyclone in a Bin directory
mkdir $HOME/Bin
cp cyclone.sh $HOME/Bin
chmod +x $HOME/Bin/cyclone.sh

# Extra Steps
## These are extra handy commands for me to run personally (but may not be applicable at all to other people). They involve installing dependencies, setting up git, etc. There is no bulk downloads of programs though (that step comes later)

echo "Would you like to go about installing some depndencies (feh, dmenu, etc) and configuring more things (like git, etc?)."
read -n 1

# You already have git installed if you have this directory. But you may not have it configured yet.
git config --global user.name "Nathaniel Pisarski"
git config --global user.email "nathanpisarski@gmail.com"

# Install some super commonly used pieces of software
pacman -Syy
pacman -S feh ranger dmenu dzen2 emacs vim terminology rustup tmux arandr htop zsh curl

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Now that oh-my-zsh is installed, add some values to path variable
echo "export PATH=\$PATH:\$HOME/Bin" >> $HOME/.zshrc
echo "export PATH=\$PATH:\$HOME/.cargo/bin" >> $HOME/.zshrc
echo "You may need to manually set the ZSH variable in .zshrc to point to $HOME/.oh-my-zsh"

# Install the rust toolchain
rustup toolchain install nightly

# This will pull down all of the 
echo "Okay. Last thing, I promise. We're now going to pull down ALL of your github repositories. Enter to do it, ^C to GTFO"
read -n 1

cd $HOME/Code/Github
# Pull ALL github repositories
git clone https://github.com/natepisarski/Nor-Zjanar-Storyboard.git
git clone https://github.com/natepisarski/relationship-points.git
git clone https://github.com/natepisarski/alien.git
git clone https://github.com/natepisarski/emissary.git
git clone https://github.com/natepisarski/citadel-crud.git
git clone https://github.com/natepisarski/graveyard.git
git clone https://github.com/natepisarski/SearchEverywhere-ts.git
git clone https://github.com/natepisarski/NitWitt.git
git clone https://github.com/natepisarski/amalgate.git
git clone https://github.com/natepisarski/HumDrum.git
git clone https://github.com/natepisarski/Selexus.git
git clone https://github.com/natepisarski/CompressionMaster.git

