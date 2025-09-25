# My personal laptop dotfiles for a tiling workflow on Sway

A swaywm setup managed through chezmoi for reproducible, cross-machine desktop environment deployment. Features tiling window management, custom status bar configuration, terminal theming, and application-specific dotfiles optimized for my laptop workflow primarily on cachy-os.

### Prerequisites

- `chezmoi` installed on your system
- Sway window manager (`sway`)
- Wayland compositor support
- Git for repository management

### How to yank my dots for yourself

1. **Initialize chezmoi with this repository:**
   ```bash
   chezmoi init https://github.com/ko-karol/dotfiles.git
   ```

2. **Preview what changes will be applied:**
   ```bash
   chezmoi diff
   ```

3. **Apply the configuration:**
   ```bash
   chezmoi apply
   ```

4. **Reload Sway configuration:**
   ```bash
   sway reload
   # or restart sway session
   ```

## Daily Usage

### Managing Configurations

- **Update from remote repository:**
  ```bash
  chezmoi update
  ```

- **Edit existing dotfiles:**
  ```bash
  chezmoi edit ~/.config/sway/config
  chezmoi apply
  ```

- **Add new dotfiles to management:**
  ```bash
  chezmoi add ~/.config/newapp/config
  ```

- **Check repository status:**
  ```bash
  chezmoi status
  ```

- **Push local changes:**
  ```bash
  chezmoi cd
  git add . && git commit -m "update: configuration changes"
  git push
  exit
  ```

## What's Included

### Window Manager
- **Sway configuration** with custom keybindings and workspace management
- **Window rules** for specific applications
- **Input device configuration** (keyboard layout, touchpad settings)
- **Output configuration** for multiple monitor setups

### Status Bar & UI
- Status bar configuration (waybar/swaybar)
- Notification daemon setup
- Application launcher configuration
- Lock screen and idle management

### Terminal Environment
- Terminal emulator configuration and theming
- Shell configuration (zsh/bash) with aliases and functions
- Command-line tool configurations
- Development environment setup

### Applications
- Text editor/IDE configurations
- Browser customizations
- Media player settings
- Productivity tool configurations

### System Integration
- Environment variables and XDG directories
- Systemd user services
- Desktop entries and MIME associations
- Font and theme configurations

## Customization

### Before Using

Fork this repository and customize these critical sections for your hardware:

1. **Monitor Configuration** (`~/.config/sway/config`):
   ```
   # Get your output names
   swaymsg -t get_outputs
   
   # Adjust output configuration
   output HDMI-A-1 resolution 1920x1080 position 0,0
   ```

2. **Input Devices** (`~/.config/sway/config`):
   ```
   # List input devices
   swaymsg -t get_inputs
   
   # Configure touchpad/keyboard
   input "type:touchpad" {
       tap enabled
       natural_scroll enabled
   }
   ```

3. **Application Paths** - Update any hardcoded paths to match your system
4. **Personal Preferences** - Keybindings, themes, and workflow settings

### Making Changes

1. Edit configurations through chezmoi:
   ```bash
   chezmoi edit <file>
   ```

2. Test changes:
   ```bash
   chezmoi apply
   sway reload
   ```

3. Commit and push:
   ```bash
   chezmoi cd
   git add . && git commit -m "feat: update configuration"
   git push
   ```

## Dependencies

### Core Requirements
- `sway` - Window manager
- `chezmoi` - Dotfile management
- `git` - Version control

### Recommended Applications
Check individual configuration files for specific dependencies. Common requirements:
- `waybar` - Status bar
- `wofi`/`rofi` - Application launcher  
- `kitty`/`alacritty` - Terminal emulator
- `mako` - Notification daemon
- `swaylock` - Screen locker
- `grim` + `slurp` - Screenshots
- `wl-clipboard` - Clipboard management

### Installation Commands

**Arch Linux:**
```bash
pacman -S sway waybar wofi kitty mako swaylock grim slurp wl-clipboard
yay -S chezmoi
```

**Ubuntu/Debian:**
```bash
apt install sway waybar wofi kitty mako-notifier swaylock grim slurp wl-clipboard
# Install chezmoi from GitHub releases
```

**Fedora:**
```bash
dnf install sway waybar wofi kitty mako swaylock grim slurp wl-clipboard
dnf install chezmoi
```

## License

This configuration is provided as-is for educational and personal use. Individual application configurations may have their own licensing requirements.

## Acknowledgments

Thanks to the Sway, chezmoi, and Wayland communities for creating the tools that make this setup possible.
