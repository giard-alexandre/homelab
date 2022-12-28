# Install FCOS VM

Create the appropriate VM and boot from ISO. Once live booted, run the following command to read the specified ignition file and install Fedora Coreos.
```bash
sudo coreos-installer install /dev/sda --ignition-url https://example.com/example.ign
```
