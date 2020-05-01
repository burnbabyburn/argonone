# argonone
Argon One Service and Control Scripts por Raspberry Pi 4

Argon Script delivered with the device:
https://download.argon40.com/argon1.sh

* Creator of PKGBbuild and service files => https://github.com/kounch/argonone
* Modification for RPI4 => https://github.com/Elrondo46/argonone


## Changelog
My contribution is the deb file for debian systems.
* We moved from `/opt` to `/usr/share` for DebianReasons
* renaimed all files to argonone (missing d) so packagebuilder recognizes service file.
* A silent default config is included as default. The difference between `3` and `100` as a fanspeed value in `/etc/argonone.conf` is nearly not noticable. GO Exponential!
* Changed vcgencmd path to `/usr/bin/vcgencmd` - Maybe that's not correct for raspian; but it is for [RPI23](https://github.com/drtyhlpr/rpi23-gen-image)
* Removed python venv as it caused unsolvable trouble for me. As a plus we now have apt updating our libs and don't need to build python packages on install. It's still possible that the advantage of venv negates the positive effects.

## Building Package
Starting from a minimal debootstrap aarch64

1. `apt install git build-essential debhelper`
2. `git clone https://github.com/burnbabyburn/argonone.git && cd argonone && dpkg-buildpackage`
4. `dpkg -i ../*.deb`
