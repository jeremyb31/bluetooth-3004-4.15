make -C /lib/modules/$(uname -r)/build M=$(pwd) clean
cp /usr/src/linux-headers-$(uname -r)/.config .
cp /usr/src/linux-headers-4.15.0-20-generic/Module.symvers .
make -C /lib/modules/$(uname -r)/build M=$(pwd) modules
sudo cp btusb.ko /lib/modules/$(uname -r)/kernel/drivers/bluetooth/btusb.ko
