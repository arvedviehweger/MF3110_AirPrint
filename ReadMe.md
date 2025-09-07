# How to show a custom icon for AirPrint Printers shared over the Network

First run ipp2ppd:

```bash
/System/Library/Printers/Libraries/ipp2ppd ipp://localhost/printers/Canon_MF3110_WLAN /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/AirPrint.ppd  > CanonMF3110.ppd
```

Then edit the ppd as necessary (printer name, app icon path...).

Now install the PPD to /Library/Printers/PPDs/Contents/Resources/

Make sure to install the icon to the specified path in the ppd.

Now add the printer from System Preferences with the Generic Post Script Driver.

Now run:

```bash
sudo lpadmin -p Canon_MF3110_WLAN -P /Library/Printers/PPDs/Contents/Resources/Canon_LB_MF3110.ppd.gz -E
```

Done!
