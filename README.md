# Disclaimer
I'm not a developer, I don't know much. Original adaptation is made by https://github.com/Verevka, but instructions are somewhat confusing and the files are buried somewhere in telegram channel. I'm just trying to make more advanced guide and additional fixes to make system work better.

# State
Basically everything works, besides camera and apparently nfc.
But camera works in waydroid, so we have a half-solution.

# Installation

It's better to read wiki for more details and post-installation hacks
https://github.com/vacuumbeef/droidian-adaptation-vayu/wiki

1. Download adaptation and LineageOS rom from the latest release
2. Download latest Droidian (rootfs-api30-arm64)
3. Format data & Factory reset
4. Flash (sideload) Lineage
5. Flash (sideload) rootfs
6. Flash (sideload) adaptation

# Changes from original for now
Added batman battery management, which changes cpu governor to 'powersave' when the screen is off.

Changed default scaling for better fit.

Disabled various services unused in halium.
