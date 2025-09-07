#/bin/bash

# This script will install the MF3110 airprint custom ppd file to the correct location

# install the icon

sudo cp ./Canon_MF3110.icns /Library/Printers/Canon/Icon/

# Install the ppd file

sudo cp ./Canon_LB_MF3110.ppd.gz /Library/Printers/PPDs/Contents/Resources/

# Ask for the printer name

echo "Please enter the printer name (Canon MF3110):"

read printername

# Add the printer

sudo lpadmin -p "$printername" -P /Library/Printers/PPDs/Contents/Resources/Canon_LB_MF3110.ppd.gz -E