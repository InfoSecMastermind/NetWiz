# NetWiz

NetWiz is a command-line tool designed to be an all-in-one network configuration assistant for Linux systems. It provides a convenient interface for managing various network settings and configurations from a single place.
And it is inspired from The Lazy Script.

## Features

- View/Edit Network Interfaces Configuration
- Manage DNS Configuration
- Manage Hostname Resolution
- Set System Hostname
- Configure Name Service Switch
- Configure NetworkManager
- Modify Kernel Parameters
- Manage iptables Firewall Configuration
- Control Network Service Access
- Handle Specific Interface Hostnames
- View/Edit Network Connections (nmcli)
- Deactivate Connections (nmcli)
- Query Network Status (nmcli)
- Scan for Wi-Fi Networks (nmcli)
- Manage Ports
- And more...

## Installation

To install NetWiz, simply download the `netwiz.sh` script and make it executable:

```bash
git clone https://github.com/InfoSecMastermind/netwiz.git
chmod +x netwiz.sh
```

## Usage
Run the script with:
```bash
sudo ./netwiz.sh
```
Follow the on-screen menu to select and perform various network configuration tasks.

## Dependencies
NetWiz requires the following dependencies:

- Bash shell
- nmcli (NetworkManager command-line interface)
- iptables (if managing firewall configuration)

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvement, please feel free to open an issue or submit a pull request.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

Feel free to customize this README file further based on your project's specifics and req
