## ctl-theme fork Layan-gtk-theme

Layan is a flat Material Design theme for GTK 3, GTK 2 and Gnome-Shell which supports GTK 3 and GTK 2 based desktop environments like Gnome, Budgie, etc.

This theme is based on materia gtk theme of nana-4. Thanks nana-4 sincerely for his great job!

#### materia gtk theme: https://github.com/nana-4/materia-theme

## Previews
![1](https://i.imgur.com/uN7UlZH.png)
![2](https://i.imgur.com/MgE4nKF.png)
![3](https://i.imgur.com/uJ9haEy.png)

## Info

### GTK+ 3.20 or later

### GTK2 engines requirment
- GTK2 engine Murrine 0.98.1.1 or later.
- GTK2 pixbuf engine or the gtk(2)-engines package.

Fedora/RedHat distros:

    yum install gtk-murrine-engine gtk2-engines

Ubuntu/Mint/Debian distros:

    sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf

ArchLinux:

    pacman -S gtk-engine-murrine gtk-engines

Other:
Search for the engines in your distributions repository or install the engines from source.

## Install

```sh
git clone https://github.com/ctlos/ctl-theme
cd ctl-theme
sudo ./install.sh
```

## Uninstall

    sudo rm -rf /usr/share/themes/ctl{,-dark,-light}{,-solid}
