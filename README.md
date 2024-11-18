# NetWiz

NetWiz is a command-line tool designed to serve as an all-in-one network configuration assistant for Debian Linux systems (like Ubuntu, Kali linux etc). It offers a convenient interface for managing various network settings and configurations from a single location, it is inspired by The Lazy Script.

**Disclaimer:** This script is provided for educational and informational purposes only. The author holds no responsibility or liability for any misuse of this script. Usage of this script is solely at the user's own risk. By using this script, you acknowledge that there is no warranty or guarantee of any kind. It is important to exercise caution and discretion when utilizing this script, and users are encouraged to understand the implications of their actions. 

![Screenshot 2024-11-19 001425](https://github.com/user-attachments/assets/ee0a36d2-5788-485c-989a-d3209381cdd5)


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
- Automatic NMAP scan
- Network Diagram Generation
- Network Speed Testing
- Connection Quality Check
- And more coming...

## Installation

To install NetWiz, simply download the `netwiz.sh` script and make it executable:

```bash
git clone https://github.com/InfoSecMastermind/netwiz.git
cd netwiz
chmod +x netwiz.sh
```

## Usage
Run the script with:
```bash
sudo ./netwiz.sh
```
Follow the on-screen menu to select and perform various network configuration and management tasks.

## Dependencies
Some NetWiz functions require the following dependencies:

- Bash shell
- nmcli (will be automatically installed if not in system)
- iptables (if managing firewall configuration)
- nmap (will be automatically installed if not in system)
- curl (will be automatically installed if not in system)
- Graphviz (will be automatically installed if not in system)
- speedtest-cli (will be automatically installed if not in system)

## Contributing
If you would like to contribute to the project, please fork the repository, make your changes, and submit a pull request. And if you find any issues or have suggestions for improvement, please feel free to open an issue or submit a pull request. Contributions are welcome! 

## License
This project is licensed under the MIT License.

Feel free to customize this README file further based on your project's specifics and requirements.
