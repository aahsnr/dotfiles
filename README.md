*[] Add p10k to zsh and apply instant-prompt
*[] Decide whether or not to use gpg-agent plugin from oh-my-zsh
*[] The following hyprland plugins need to installed after logging into Hyprland:
   - hyprexpo from hyprland-plugins
   - hyprspace
   - hyprnome
   - hy3
   - hycov ?
4. Apply theming directly in hyprland config file
5. Simlink any appropriate binary in ~/.dots/.local/bin/hypr to /usr/local/bin
6. Make ReGreet work with Hyprland
7. Configuration files for hypridle and hyprlock need to updated from rxhyn nix files
8. Trackpad needs to be disabled while typing in hyprland
9. Install both distrobox and distrobox gui
10. Create a secure rootless docker setup and harden it before creating distrobox containers
11. Create 3 distrobox containers
   - gentoo
   - arch
   - clear linux
12. Pass nvidia-driver to each of themm
13. Figure out how doom emacs might access this distrobox 
14. Install and Setup atuin, chezmoi at a later date
15. Install fonts in /usr/share/fonts/nerd instead of /usr/share/local/fonts/nerd
16. Apply themes to flatpak apps individually. If theming does not work, try adding install the same app from an arch linux distrobox
17. Install debugpy from debian repo
18. Hardening profiles are taken from parrotos_files
19. Enable automatic indentations in astrovim
20. Add neotree plugin to astrovim
21. Asusctltray needs to be fix
22. Install nix with standalone flake and home-manager
23. Eventually, all configurations are to be ported from their respective nixos configurations 
   - Hyprland configuration has already been ported 
24. To port hm configurations, use the following steps:
   - install hm module one by one
   - when one module is setup, copy its contents to your dotfiles
   - then remove that module by commenting over it.
25. Do a btrfs snapper snapshot to test the following:
   - the snapshot can be booted into
   - use arch wiki to make the snapshots read/write
26. After all these steps, create a btrfs snapshot and move from update-initramfs to dracut. Make sure to copy dracut.conf to /etc
27. Setup secureboot using pkgs available in debian's repositories. Otherwise use sbctl to setup following arch wiki.
28. Add gpg-key support to git by following the git hm module
29. Add git-lfs support to git as well.
30. Configure zellij
31. Setup ags hyprpanel.
32. Add hyprmenu to HyprPanel
33. Import bookmarks and info from chrome to firefox, and then to zen-browser
34. When adding Kali linux repo, only add certain packages in debian-pinning
35. Add hyprsunset to replace hyprshade
36. Don't build emacs yourself since it starts on X11 by showing that error

*[X] Setup a separate setup_bins script TODO 
