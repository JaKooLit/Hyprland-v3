<h3 align = "center"> Arch Hyprland Dotfiles and Script Installer v3</h3>
<br>
### Components:

- Main Component: [`Hyprland`](https://github.com/hyprwm/Hyprland)
 
- Terminal: [`Foot`](https://github.com/r-c-f/foot)
 
- Status bar: [`Waybar`](https://github.com/Alexays/Waybar)
 
- Menu : [`Wofi`](https://hg.sr.ht/~scoopta/wofi)

- FIle Manager: [`Thunar`](https://docs.xfce.org/xfce/thunar/start) (Optional)

### Arch-Hyprland install script
-The script is mainly for Arch Linux minimal installation, however, can also be used for any existing arch based linux. It can also be used for Arch Linux with Hyprland installed. Script is design to create a backup of your config files (~/.config) and will check if packages are already installed and will skip if it detects that package is already

-your previous hyprland configs will be backed up so you can always copy it over to new dotfiles

### FEATURES or Whats included in the dotfiles:
-  By default, Catpuccin Mocha Theme for Hyprland is enabled

### Miscellaneous (Optional): (Note... needed for switching between light and dark mode)
-  Themes: `Catppuccin Mocha GTK Theme` or `Mojave GTK Theme`
-  Cursor themes: `Catppuccin Cursors` or `McMojave Cursors`
-  Icon Themess: `Shiny Icons (Dark /Light` or `McMojave Circle Icon`

### Needed packages:
- (all of the above components) plus
- `swaybg` - for wallpaper withour animations
- `swwww` - for wallpaper animation (by default this is enabled)
- `swayidle` - not necessary but you can install
- `swaylock-effects` - or swaylock
- `wlroots` `wlogout` `cava` `polkit-kde-agent`
- `mako` - for notifications
- `grim` `slurp` `wl-clipboard` - for screenshot
- `brightnessctl`  - for monitor and keyboard brightness - not needed for desktop
- `mpv` - for wofi beats to work
- `viewnior` or `swayimg`  
- `pamixer` - for volume control notification. 
- `playerctl` - Keyboard hotkeys multimedia controls
- `xorg-xwayland` - needed to run some non-wayland app especially games
- `fonts` - required awesome fonts. AUR and official repo have... else most of the waybar modules wont work. Most of configs here I used Fantasque Sans Mono. I used Cascadia Code Semibold Italic on foot.
- `pipewire` - needed pipewire pipewire-pulse pipewire-alsa
- `xdg-user-dirs` - by default archinstall script does not install this on "minimal" profile. That is why I have added in script

### ✨ Arch Linux quick Installation:
- A guide to install using the install script:[`Youtube Link`]() 
- a.) You can install one by one packages above or choose the automatic installer script.
- b.) If you want to add or edit packages, edit install-hyprland-3 script (lines 280-296). Ensure packages are present on AUR or official else the script will fail.
- c.) Installation of Asus-ROG-utilities are entirely optional. This is only for Asus Laptop. if you select no, will skip the step.
- d.) Thunar and necessary plugins are entirely optional


### Additional Wallpapers
- More wallpapers can be downloaded from my Hyprland-v2.1 [`Link`](https:github.com/JaKooLit/Hyprland-v2.1/tree/main/wallpapers). Download and copy over to ~/Pictures/


### ✨ If upgrading from my old Dotfiles 
- easy way, ran script, script will create back-up of your files and folders (which needed for the config-dots) so you can easily copy over.
- long way, copy the folders in config/ and copy to your ~/.config/. Make sure to make scripts in ~/.config/hypr/scripts executable after copied. By running chmod +x ~/.config/hypr/scripts/*
- copy the waybar folder in config/hypr/waybar to your ~/.config/hypr/waybar
- copy the wallpapers to your ~/Pictures . Wallpaper scripts are checking those folder. If not, modify the scripts DarkLight.sh, DarkLight-swaybg (if decide to use swaybg), Wallpaper.sh, WallpaperSelect.sh in your ~/.config/hypr/scripts to your actual wallpapers.

### ✨ Some notes regarding using the install script:
- clone this repo by using git. Change directory, make executable and run the script 
- cd Hyprland-v3 
- chmod +× install-Hyprland-3 
- ./install-Hyprland-3

- Optional stuff you can do using the script includes choices of the following:
-   a.) you can choose either yay or paru (if they are not installed)
-   b.) whether to install none-nvidia patch hyprland package if nvidia gpu detected, 
-   c.) whether to install GTK themes and cursors. Note this is needed for Switching to dark and light themes.
-   d.) whether to install thunar and necessary plugins
-   e.) whether to install bluetooth including blueman
-   f.) whether to install and use SDDM as login manager. Optional to install Catppuccin SDDM theme
-   g.) whether to install asusctl and supergfxctl (for ASUS rog laptops)
-   h.) whether to disable wifi powersave
-   i.) whether to install xdg-desktop-portal-hyprland

### ✨ NVIDIA-Hyprland notes:
- kindly note, on configs I added all the nvidia variables from Hyprland wiki [`Link`](https://wiki.hyprland.org/Nvidia/) but by default they are not enabled. I've had issues like OBS not recording, or intermittent crashing etc, on my laptop. Check the ~/.config/hypr/configs/Execs.conf and uncomment one by one to try. You can read through Hyprland-Wiki for some guidance.

### ✨ Manual Installation and Notes: 
#### you can copy, create, change, however, would appreciate to submit like a pull request or issues if you have a better solution / changes so we will all improve :)

###Please note, Only provided are configs. Any Hyprland-related issues to be reported on Hyprland Github
- a.) Copy / Move files / folders in your ~/.config
- a.1) by default, no kb_layout set up in ~/.config/hypr/hyprland.conf . It will be set during script install. If you manually copy, ensure to put a value ie, us
- b.) Copy wallpapers to your ~/Pictures/ or you need to edit the scripts. 
- c.) kb_layout is not defined in hyprland.conf as it is part of the script. If you manually copy, ensure to add kb_layout 
- d.) if you have azerty keyboard [`this`](https://github.com/swaywm/sway/issues/1460?fbclid=IwAR1C8VcY_wWbGhXvT-5ApjJCQuJoJzhOVor6o5fdn0Nj1c6bD9JXoQAPQIg) might help

### ✨ known-issues:
- [ ] fractional scaling breaks swww. Switch to swaybg as your wallpaper renderer if you use fractional scaling
- [ ] cant get cava module to work on waybar
- [ ] weather data sometimes does not give data. This is because module is not receiving data from weather server. Deleting the rbn folder in your ~/.cache sometimes help
- [ ] script works only with gtx 1000 and rtx cards. older gen nvidia gpu's are npt supported by nvidia-dkms (it seems). Edit the scripts to not install nvidia drivers.
- [ ] background not rendering (black background) after forced shutdown. Deletig the swww folder in your ~/.cache should fix it after reboot


### Special thanks to:
- jqtmviyu [`Link`](https://github.com/jqtmviyu) - for his contributions to my Hyprland v2.1, which inspires me to follow his script names and idea of MacOS theme. 
