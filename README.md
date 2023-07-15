<h3 align = "center"> Arch Hyprland Dotfiles and Script Installer v3</h3>
<br>

### Changes from my previous dot-files
- Dotfiles are based on my previous Hyprland dots and script is based on my Hyprland-v2.1 [`Link`](https://github.com/JaKooLit/Hyprland-v2.1)
- Improvements on script
-   a.) nvidia-dkms nvidia-utils nvidia-settings libva libva-nvidia-driver-git are optional - These are applicable to those who wanted different different nvidia drivers as nvidia-dkms only support GTX 900 series or newer nvidia GPU's. Older gen nvidia owners, need to find a proper nvidia driver for your cards.
-   b.) Optional GTK themes (Catppuccin or MacOS styles) - note that switching dark to light needs GTK themes. However, this is still optional

### Whats new with these Hyprland configs?
- Screenshot with swappy is now introduced
- Clipboard Manager (cliphist)
- scripts are renamed but functions are same as previous dotfiles

### Arch-Hyprland install script
- IMPORTANT! DO NOT RUN THIS SCRIPT AS ROOT.
- NOTE! This is for any GPU. You may think its for nvidia only but its not. More steps are only needed for nvidia.
- This can be use for Laptop or Desktop.
- The script is mainly for Arch Linux minimal installation, however, can also be used for any existing arch based linux. It can also be used for Arch Linux with Hyprland installed. Script is design to create a backup of your config files (~/.config) and will check if packages are already installed and will skip if it detects that package is already

- your previous hyprland configs will be backed up so you can always copy it over to new dotfiles

### FEATURES or Whats included in the dotfiles:
-  By default, Catppuccin Mocha Theme for Hyprland is enabled

### Miscellaneous (Optional): (Note... needed for switching between light and dark mode)
-  Themes: `Catppuccin Mocha GTK Theme` or `Mojave GTK Theme`
-  Cursor Themes: `Catppuccin Cursors` or `McMojave Cursors`
-  Icon Themes: `Shiny Icons (Dark and Light` or `McMojave Circle Icon`

### ✨ Arch Linux quick Installation:
- A guide to install using the install script:[`Youtube Link`](https://youtu.be/mbQd0bJQ6a8) 
- a.) You can install one by one packages above or choose the automatic installer script.
- b.) If you want to add or edit packages, edit install-hyprland-3 script (lines 280-296). Ensure packages are present on AUR or official else the script will fail.
- c.) Installation of Asus-ROG-utilities are entirely optional.
- d.) Thunar and necessary plugins are entirely optional


### Additional Wallpapers
- More wallpapers can be downloaded from my Hyprland-v2.1 [`Link`](https://github.com/JaKooLit/Hyprland-v2.1/tree/main/wallpapers). Download and copy over to ~/Pictures/


### ✨ If upgrading from my old Dotfiles 
- easy way, ran script, script will create back-up of your files and folders (which needed for the config-dots) so you can easily copy over.
- long way, 
-   a.) copy the folders in config/ and copy to your ~/.config/. Make sure to make scripts in ~/.config/hypr/scripts executable after copied. By running chmod +x ~/.config/hypr/scripts/*
-   b.) copy the wallpapers to your ~/Pictures . Wallpaper scripts are checking those folder. If not, modify the scripts DarkLight.sh, DarkLight-swaybg (if decide to use swaybg), Wallpaper.sh, WallpaperSelect.sh in your ~/.config/hypr/scripts to your actual wallpapers.
-   c.) extract icons in assets/ to ~/.icons/

### ✨ Some notes regarding using the install script:
- clone this repo by using git. Change directory, make executable and run the script
- git clone https://github.com/JaKooLit/Hyprland-v3 
- cd Hyprland-v3 
- chmod +× install-Hyprland-v3 
- ./install-Hyprland-v3

- Optional stuff you can do using the script includes choices of the following:
-   a.) you can choose either yay or paru (if they are not installed)
-   b.) whether to install none-nvidia patch hyprland package if nvidia gpu detected, and wether to install nvidia-dkms or not
-   c.) whether to install GTK themes and cursors. Note this is needed for Switching to dark and light themes.
-   d.) whether to install thunar and necessary plugins
-   e.) whether to install bluetooth including blueman
-   f.) whether to install and use SDDM as login manager. Optional to install Catppuccin SDDM theme
-   g.) whether to install asusctl and supergfxctl (for ASUS rog laptops)
-   h.) whether to disable wifi powersave
-   i.) whether to install xdg-desktop-portal-hyprland

### ✨ NVIDIA-Hyprland notes:
- kindly note, on configs I added all the nvidia variables from Hyprland wiki [`Link`](https://wiki.hyprland.org/Nvidia/) but by default they are not enabled apart from env = WLR_NO_HARDWARE_CURSORS,1. I've had issues like OBS not recording, or intermittent crashing etc, on my laptop. Check the ~/.config/hypr/configs/ENVariables.conf and uncomment one by one to try. You can read through Hyprland-Wiki for some guidance.

### ✨ Manual Installation and Notes: 
#### you can copy, create, change, however, would appreciate to submit like a pull request or issues if you have a better solution / changes so we will all improve :)

### Please note, Only provided are configs. Any Hyprland-related issues to be reported on Hyprland Github
- a.) Copy / Move files / folders in your ~/.config
- a.1) by default, no kb_layout set up in ~/.config/hypr/hyprland.conf . It will be set during script install. If you manually copy, ensure to put a value ie, us, gb, pl, es, kr, jp.... etc
- a.2) by default there are no border color set up in ~/.config/hypr/hyprland.conf . It will be set during script install depending on which theme you select. If you manually copied, ensure to uncomment line 23 (neon color) or line 24 (blueish color) or it will be defaulted to white.
- a.3) If you manually copied the config in dotfiles, ensure to uncomment Themes and Icons part on the DarkLight.sh script. Which is located in ~/.config/hypr/scripts/ . And copy over the dark style waybar from ~/.config/hypr/waybar/style/dark-styles/ to  ~/.config/hypr/waybar/style/ and rename as style-dark.css or the DarkLight.sh script wont work. 
-a.4) Extract the icons in assets/ to ~/.icons/

- b.) Copy wallpapers to your ~/Pictures/ or you need to edit the scripts. 
- c.) if you have azerty keyboard [`this`](https://github.com/swaywm/sway/issues/1460?fbclid=IwAR1C8VcY_wWbGhXvT-5ApjJCQuJoJzhOVor6o5fdn0Nj1c6bD9JXoQAPQIg) might help

### ✨ known-issues:
- [ ] fractional scaling breaks swww. Switch to swaybg as your wallpaper renderer if you use fractional scaling
- [ ] cant get cava module to work on waybar
- [ ] weather data sometimes does not give data. This is because module is not receiving data from weather server. Deleting the rbn folder in your ~/.cache sometimes help
- [ ] background not rendering (black background) after forced shutdown. Deletig the swww folder in your ~/.cache should fix it after reboot


### Special thanks to:
- jqtmviyu [`Link`](https://github.com/jqtmviyu) - for his contributions to my Hyprland v2.1, which inspires me to follow his script names and idea of MacOS theme. 
