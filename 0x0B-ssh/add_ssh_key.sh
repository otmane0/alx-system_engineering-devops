#!/bin/bash

# Check if the user is root (superuser)
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root."
  exit 1
fi

# SSH public key to be added
SSH_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN"

# Specify the user you want to configure (in this case, ubuntu)
USER="ubuntu"

# Check if the user exists
if id "$USER" &>/dev/null; then
  echo "User '$USER' exists, proceeding to add SSH key."
else
  echo "User '$USER' does not exist. Please create the user first."
  exit 1
fi

# Create the .ssh directory if it does not exist
mkdir -p /home/$USER/.ssh
chmod 700 /home/$USER/.ssh

# Add the SSH public key to the authorized_keys file
echo "$SSH_KEY" >> /home/$USER/.ssh/authorized_keys

# Set the correct permissions for the authorized_keys file
chmod 600 /home/$USER/.ssh/authorized_keys

# Set the correct ownership for the .ssh directory and authorized_keys file
chown -R $USER:$USER /home/$USER/.ssh

# Inform the user that the SSH key has been added
echo "SSH public key has been successfully added to the '$USER' user's authorized_keys file."
