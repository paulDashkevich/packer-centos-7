#!/usr/bin/env bash
set -x

VBOX_VERSION=$(cat .vbox_version)
VBOX_ISO=/tmp/VBoxGuestAdditions_$VBOX_VERSION.iso
VBOX_MNTDIR=$(mktemp --tmpdir=/tmp -q -d -t vbox_mnt_XXXXXX)

# Install Vbox Guest Additions
sudo mount -o loop $VBOX_ISO $VBOX_MNTDIR
yes|sudo sh $VBOX_MNTDIR/VBoxLinuxAdditions.run

# Clean up
sudo umount $VBOX_MNTDIR
sudo rm -rf $VBOX_MNTDIR
sudo rm -f $VBOX_ISO