#!/bin/bash

# Update the package list
sudo apt update

# Install necessary dependencies
sudo apt install -y wget openjdk-11-jdk

# Download the latest Openfire version
wget -O openfire.deb https://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_4.6.8_all.deb

# Install Openfire
sudo dpkg -i openfire.deb

# Fix any missing dependencies
sudo apt install -f

# Start and enable the Openfire service
sudo systemctl start openfire
sudo systemctl enable openfire

# Clean up
rm openfire.deb

# Output Openfire status
sudo systemctl status openfire

echo "Openfire installation completed. Access the admin console at http://your_server_ip:9090"

# End of script
