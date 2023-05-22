# OUTDATED

- **For Vayu-specific rootfs Droidian build - look [here](https://github.com/droidian-vayu/droidian-images/releases) (it is the preffered way to install droidian)**
- **For a new up-to-date adaptation - look [here](https://github.com/droidian-vayu/adaptation-droidian-vayu/releases) (if you need it for some reason)**

# EVERYTHING BEHIND THIS LINE IS OBSOLETE
___
## Disclaimer
Original adaptation is made by https://github.com/Verevka, but instructions are somewhat confusing and the files are buried somewhere in telegram channel. I'm just trying to make more advanced guide and additional fixes and additions to make system work better.

## State
Basically everything works, besides second SIM and apparently nfc.
I have some progress with second SIM, but can't promise anything.
Camera works, but on the second start after reboot. I've added a script that closes the camera after 5 seconds and opens it again, only on first start. It works by default, no additional actions by user needed.

## Installation

It's better to read wiki for more details and post-installation hacks
https://github.com/vacuumbeef/droidian-adaptation-vayu/wiki

1. Download adaptation and LineageOS rom from the latest release
2. Download latest Droidian (rootfs-api30-arm64)
3. Format data & Factory reset
4. Flash LineageOS rom
5. Flash rootfs
6. Flash adaptation
