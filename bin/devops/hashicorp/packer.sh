#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the installer script."
    exit
fi

curl -o packer.zip https://releases.hashicorp.com/packer/1.1.2/packer_1.1.2_linux_amd64.zip

unzip packer.zip
sudo mv packer /usr/local/bin
rm packer.zip

echo "(+) Complete! Run with $ packer"

if [ $SKIP_SLEEP == false ]; then
    sleep 4
fi

