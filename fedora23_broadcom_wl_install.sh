#/usr/bin/env bash

COMMAND = $1

if [ -z $COMMAND ]; then
    $COMMAND = "all"
fi

# Install some pacakages we'll need to compile the driver below.
sudo dnf install gcc kernel-devel -y

# Create working dir for Broadcom driver files and patches.
mkdir -p  hybrid_wl_f23

# Change to working dir.
cd hybrid_wl_f23

if [ $COMMAND -eq "download" OR $COMMAND -eq "all"]; then

    if [ `uname -m` == 'x86_64' ]; then
        # 64-bit driver files.
        FILE='hybrid-v35_64-nodebug-pcoem-6_30_223_271.tar.gz'
    else
        # 32-bit driver files.
        FILE='hybrid-v35-nodebug-pcoem-6_30_223_271.tar.gz'
    fi

    # Download Broadcom Linux Wi-Fi driver.
    wget http://www.broadcom.com/docs/linux_sta/$FILE

    # Extract driver files.
    tar zxvf $FILE

fi

if [ $COMMAND -eq "install" OR $COMMAND -eq "all" ]; all
    # Compile driver.
    make clean && make

    # Install driver.
    sudo make install

    # Update available drivers.
    sudo depmod -a

    # Unload conflicting drivers.
    sudo rmmod b43 ssb bcma

    # Load the driver.
    sudo modprobe wl

    # Blacklist conflicting drivers.
    printf 'blacklist b43\nblacklist ssb\nblacklist bcma\n' | sudo tee /etc/modprobe.d/wl.conf

    # Load driver automatically at boot time.
    echo 'wl' | sudo tee /etc/modules-load.d/wl.conf

    # Connect to a Wi-Fi network via NetworkManager...
fi

