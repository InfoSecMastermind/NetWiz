#!/bin/bash

# NetWiz

# Disclaimer: This script is provided for educational and informational purposes only. 
# The author holds no responsibility or liability for any misuse of this script. 
# Usage of this script is solely at the user's own risk. 
# By using this script, you acknowledge that there is no warranty or guarantee of any kind.


# Function to display menu

display_menu() {
    clear
    echo -e "\e[1m\e[96m"  # Bold cyan color
    echo "  _   _      ___          ___     "
    echo " | \ | |    | \ \        / (_)    "
    echo " |  \| | ___| |\ \  /\  / / _ __  "
    echo " | . \` |/ _ \ __\ \/  \/ / | |_ \    By InfoSecMastermind "
    echo " | |\  |  __/ |_ \  /\  /  | |/ / "
    echo " |_| \_|\___|\__| \/  \/   |_/___| "
    echo
    echo -e "\e[2m\e[33mNetWiz: All Neccesary Network Configuration And Management Unified\e[0m"  # Dim yellow color
    echo "------------------------------------------------------------------"
    echo
    echo -e " \e[1;33m1.\e[0m View/Edit Network Interfaces Configuration"
    echo -e " \e[1;33m2.\e[0m Manage DNS Configuration"
    echo -e " \e[1;33m3.\e[0m Manage Hostname Resolution"
    echo -e " \e[1;33m4.\e[0m Set System Hostname"
    echo -e " \e[1;33m5.\e[0m Configure Name Service Switch"
    echo -e " \e[1;33m6.\e[0m Configure NetworkManager"
    echo -e " \e[1;33m7.\e[0m Modify Kernel Parameters"
    echo -e " \e[1;33m8.\e[0m Manage iptables Firewall Configuration"
    echo -e " \e[1;33m9.\e[0m Control Network Service Access"
    echo -e " \e[1;33m10.\e[0m Handle Specific Interface Hostnames"
    echo -e " \e[1;33m11.\e[0m View/Edit Network Connections (nmcli)"
    echo -e " \e[1;33m12.\e[0m Deactivate Connections (nmcli)"
    echo -e " \e[1;33m13.\e[0m Query Network Status (nmcli)"
    echo -e " \e[1;33m14.\e[0m Scan for Wi-Fi Networks (nmcli)"
    echo -e " \e[1;33m15.\e[0m Manage Ports"
    echo -e " \e[1;33m16.\e[0m Network Mapping & Scan (NMAP)"
    echo -e " \e[1;33m17.\e[0m Generate Network Diagram (Graphwiz)"
    echo -e " \e[1;33m18.\e[0m Network Speed Testing"
    echo -e " \e[1;33m19.\e[0m Ping and Latency Test"
    echo -e " \e[1;33m20.\e[0m Exit"
    echo
}





# 1 Function to view/edit network interfaces configuration
view_edit_interfaces() {

 # Check if nmcli is installed
    if ! command -v nmcli &> /dev/null; then
        echo "nmcli is not installed. Installing..."
        sudo apt install network-manager -y
    fi

    echo "View/Edit Network Interfaces Configuration"
    echo "------------------------------------------"
    echo "1. View Network Interfaces Configuration"
    echo "2. Edit Network Interfaces Configuration"
    read -p "Enter your choice: " choice
    case $choice in
        1) nmcli connection show ;;
        2) echo "Editing network interfaces configuration..."
           sudo nmcli connection edit ;; # Use sudo to edit connections if necessary
        *) echo "Invalid choice. Please try again." ;;
    esac
    read -p "Press Enter to continue"
}



# 2 Function to manage DNS configuration
manage_dns() {
    echo "Manage DNS Configuration"
    echo "------------------------"
    echo "1. View DNS Configuration"
    echo "2. Edit DNS Configuration"
    read -p "Enter your choice: " choice
    case $choice in
        1) cat /etc/resolv.conf ;;
        2) nano /etc/resolv.conf ;; # Use nano or any other text editor of your choice
        *) echo "Invalid choice. Please try again." ;;
    esac
    read -p "Press Enter to continue"
}


# 3 Function to manage hostname resolution
manage_hostname_resolution() {
    echo "Manage Hostname Resolution"
    echo "--------------------------"
    echo "1. View Hosts Configuration"
    echo "2. Edit Hosts Configuration"
    read -p "Enter your choice: " choice
    case $choice in
        1) cat /etc/hosts ;;
        2) nano /etc/hosts ;; # Use nano or any other text editor of your choice
        *) echo "Invalid choice. Please try again." ;;
    esac
    read -p "Press Enter to continue"
}


# 4 Function to set system hostname
set_system_hostname() {
    echo "Set System Hostname"
    echo "-------------------"
    read -p "Enter the new hostname: " new_hostname
    echo "$new_hostname" > /etc/hostname
    hostname "$new_hostname"
    echo "Hostname set successfully."
    read -p "Press Enter to continue"
}


# 5 Function to configure Name Service Switch
configure_nsswitch() {
    echo "Configure Name Service Switch"
    echo "-----------------------------"
    echo "Editing /etc/nsswitch.conf..."
    nano /etc/nsswitch.conf  # Use nano or any other text editor of your choice
    echo "Name Service Switch configuration updated."
    read -p "Press Enter to continue"
}



# 6 Function to configure NetworkManager
configure_networkmanager() {
    echo "Configure NetworkManager"
    echo "------------------------"
    echo "Editing /etc/NetworkManager/NetworkManager.conf..."
    nano /etc/NetworkManager/NetworkManager.conf  # Use nano or any other text editor of your choice
    echo "NetworkManager configuration updated."
    read -p "Press Enter to continue"
}


# 7 Function to modify kernel parameters
modify_kernel_parameters() {
    echo "Modify Kernel Parameters"
    echo "------------------------"
    echo "Editing /etc/sysctl.conf..."
    nano /etc/sysctl.conf  # Use nano or any other text editor of your choice
    echo "Kernel parameters updated."
    echo "Applying changes..."
    sysctl -p
    echo "Changes applied successfully."
    read -p "Press Enter to continue"
}


# 8 Function to manage iptables firewall configuration
manage_iptables() {
    echo "Manage iptables Firewall Configuration"
    echo "--------------------------------------"
    echo "1. View iptables Configuration"
    echo "2. Add New iptables Rule"
    echo "3. Remove iptables Rule"
    read -p "Enter your choice: " choice
    case $choice in
        1) echo "Current iptables rules:"
           iptables -L ;;
        2) read -p "Enter the new iptables rule: " new_rule
           sudo iptables -A $new_rule ;; # Use appropriate iptables command to add rule
        3) read -p "Enter the iptables rule to remove: " rule_to_remove
           sudo iptables -D $rule_to_remove ;; # Use appropriate iptables command to remove rule
        *) echo "Invalid choice. Please try again." ;;
    esac
    read -p "Press Enter to continue"
}





# 9 Function to control network service access
control_network_service_access() {
    echo "Control Network Service Access"
    echo "------------------------------"
    echo "Editing /etc/hosts.allow and /etc/hosts.deny..."
    echo "1. Edit hosts.allow"
    echo "2. Edit hosts.deny"
    read -p "Enter your choice: " choice
    case $choice in
        1) nano /etc/hosts.allow ;; # Use nano or any other text editor of your choice
        2) nano /etc/hosts.deny ;;  # Use nano or any other text editor of your choice
        *) echo "Invalid choice. Please try again." ;;
    esac
    echo "Network service access rules updated."
    read -p "Press Enter to continue"
}



# 10 Function to handle specific interface hostnames
handle_interface_hostnames() {
    echo "Handle Specific Interface Hostnames"
    echo "-----------------------------------"
    echo "Checking for interface-specific hostname files..."
    
    # Check for interface-specific hostname files
    interface_files=$(find /etc -type f -name "hostname.*" 2>/dev/null)
    
    if [ -n "$interface_files" ]; then
        echo "Interface-specific hostname files found:"
        echo "$interface_files"
        echo "Enter the interface name to edit its hostname (e.g., eth0):"
        read interface_name
        interface_hostname_file="/etc/hostname.$interface_name"
        
        if [ -f "$interface_hostname_file" ]; then
            echo "Editing interface-specific hostname file: $interface_hostname_file"
            nano "$interface_hostname_file"  # Use nano or any other text editor of your choice
            echo "Interface-specific hostname updated."
        else
            echo "Interface-specific hostname file not found for interface $interface_name."
        fi
    else
        echo "No interface-specific hostname files found."
    fi
    read -p "Press Enter to continue"
}



# 11 Function to view/edit network connections using nmcli
view_edit_connections() {

 # Check if nmcli is installed
    if ! command -v nmcli &> /dev/null; then
        echo "nmcli is not installed. Installing..."
        sudo apt install network-manager -y
    fi


    echo "View/Edit Network Connections (nmcli)"
    echo "-------------------------------------"
    nmcli connection show
    echo "Enter the connection name to edit:"
    read connection_name
    nmcli connection edit "$connection_name"
    read -p "Press Enter to continue"
}


# 12 Function to deactivate connections using nmcli
deactivate_connections() {

 # Check if nmcli is installed
    if ! command -v nmcli &> /dev/null; then
        echo "nmcli is not installed. Installing..."
        sudo apt install network-manager -y
    fi

    echo "Deactivate Connections (nmcli)"
    echo "------------------------------"
    
    # List active connections
    echo "Active connections:"
    nmcli connection show --active
    
    # Prompt for the connection to deactivate
    read -p "Enter the name or UUID of the connection to deactivate: " connection_name_or_uuid
    
    # Deactivate the specified connection
    nmcli connection down "$connection_name_or_uuid"
    
    echo "Connection deactivated."
    read -p "Press Enter to continue"
}



# 13 Function to query network status using nmcli
query_network_status() {

 # Check if nmcli is installed
    if ! command -v nmcli &> /dev/null; then
        echo "nmcli is not installed. Installing..."
        sudo apt install network-manager -y
    fi

    echo "Query Network Status (nmcli)"
    echo "----------------------------"
    nmcli device show
    read -p "Press Enter to continue"
}


# 14 Function to scan for Wi-Fi networks using nmcli
scan_wifi_networks() {

 # Check if nmcli is installed
    if ! command -v nmcli &> /dev/null; then
        echo "nmcli is not installed. Installing..."
        sudo apt install network-manager -y
    fi

    echo "Scan for Wi-Fi Networks (nmcli)"
    echo "-------------------------------"
    nmcli device wifi list
    read -p "Press Enter to continue"
}



# 15 Function to manage ports
manage_ports() {
    echo "Manage Ports"
    echo "------------"
    echo "1. View Open Ports"
    echo "2. Open Port"
    echo "3. Close Port"
    read -p "Enter your choice: " choice
    case $choice in
        1) netstat -tuln ;;
        2) read -p "Enter port number to open: " port_number
           firewall-cmd --add-port="$port_number/tcp" --permanent
           firewall-cmd --reload ;;
        3) read -p "Enter port number to close: " port_number
           firewall-cmd --remove-port="$port_number/tcp" --permanent
           firewall-cmd --reload ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
    read -p "Press Enter to continue"
}



# 16 Function to perform automatic network scanning (1000 ports) using Nmap 
network_scan_auto() {
    clear
    echo "Running automatic Nmap scan..." 
    echo

    # Check if Nmap is installed
    if ! command -v nmap &> /dev/null; then
        echo "Nmap is not installed. Installing it now..."
        sudo apt-get update
        sudo apt-get install -y nmap
        echo
    fi

    # Check if curl is installed
    if ! command -v curl &> /dev/null; then
        echo "curl is not installed. Installing it now..."
        sudo apt-get update
        sudo apt-get install -y curl
        echo
    fi

    # Ask the user for the scan option
    echo "Select scan option:"
    echo "-------------------"
    echo "1. Scan public IP address"
    echo "2. Scan local network"
    echo "3. Scan both"
    echo
    read -p "Enter your choice: " option
    echo

    # Determine the public IP address of the system
    local public_ip=$(curl -s ifconfig.me)

    case $option in
        1)
            # Perform network scan on the public IP address
            echo "Your public IP address: $public_ip"
            echo
            echo "Scanning public IP address..."
            echo
            echo "Please Wait, This can take quite some time."
            echo
            sudo nmap -v -A -sS -T5 "$public_ip"  # Scan the public IP address
            ;;
        2)
            # Determine the local IP address of the system
            local local_ip=$(hostname -I | cut -d' ' -f1)

            # Perform network scan on the local network
            echo "Your local IP address: $local_ip"
            echo
            echo "Scanning local network..."
            echo
            echo "Please Wait, This can take quite some time."
            echo
            sudo nmap -v -A -sS -T5 "$local_ip"/24  # Fast scan of the subnet
            ;;
        3)
            # Perform network scan on the public IP address
            echo "Your public IP address: $public_ip"
            echo
            echo "Scanning public IP address..."
            echo
            echo "Please Wait, This can take quite some time."
            echo
            sudo nmap -v -A -sS -T5 "$public_ip"  # Scan the public IP address
            echo
            echo
            echo

            # Determine the local IP address of the system
            local local_ip=$(hostname -I | cut -d' ' -f1)

            # Perform network scan on the local network
            echo "Your local IP address: $local_ip"
            echo
            echo "Scanning local network..."
            echo
            echo "Please Wait, This can take quite some time."
            echo
            sudo nmap -v -A -sS -T5 "$local_ip"/24  # Fast scan of the subnet
            ;;
        *)
            echo "Invalid option. Exiting..."
            return
            ;;
    esac

    read -p "Press Enter to return to the main menu..."
}

# 18 To test the upload and download speeds of the current internet connection
speedtest_network() {
       if ! command -v speedtest &> /dev/null; then
          echo "Installing speedtest-cli..."
          sudo apt-get install -y speedtest-cli
      fi
      speedtest
      read -p "Press Enter to continue"
   }

#19 Connection Quality Check

ping_and_latency_test() {
    echo "Ping and Latency Test to Google DNS"
    echo "-----------------------------------"
    
    # Perform the ping test to Google DNS
    echo "Pinging Google DNS (8.8.8.8)..."
    ping_output=$(ping -c 4 8.8.8.8)
    echo "$ping_output"
    
    # Extract the average latency (from the output of the ping command)
    avg_latency=$(echo "$ping_output" | grep "rtt" | awk -F'/' '{print $5}')
    
    if [ -n "$avg_latency" ]; then
        echo "Average latency to Google DNS (8.8.8.8): $avg_latency ms"
    else
        echo "Unable to determine latency to Google DNS."
    fi
    read -p "Press Enter to continue"
}
   
# 17 Function to generate net topology diagram using nmcli and Graphviz    
generate_network_diagram() {
    echo "Generating Network Diagram..."

    # Check if nmcli is installed
    if ! command -v nmcli &> /dev/null; then
        echo "nmcli is not installed. Installing..."
        sudo apt install network-manager -y
    fi

    # Check if Graphviz is installed
    if ! command -v dot &> /dev/null; then
        echo "Graphviz is not installed. Installing..."
        sudo apt install graphviz -y
    fi

    # Automatically collect network information using nmcli
    devices=($(nmcli device | awk 'NR > 1 && /^[^\s]/ {print $1}'))

    connections=()
    for device in "${devices[@]}"; do
        if [ -n "$device" ]; then
            inet_addr=$(nmcli device show $device | awk '/IP4.ADDRESS\[1\]/ {print $2}')
            mac_addr=$(nmcli device show $device | awk '/GENERAL.HWADDR/ {print $2}')
            device_type=$(nmcli device show $device | awk '/GENERAL.TYPE/ {print $2}')
            mtu=$(nmcli device show $device | awk '/GENERAL.MTU/ {print $2}')
            connections+=("\"$device [Type: $device_type\nMTU: $mtu\ninet addr: ${inet_addr:-N/A}\nMAC addr: ${mac_addr:-N/A}]\"")
            device_connections=($(nmcli device show $device | awk '/CONNECTIONS/ {print $2}' | tr ',' '\n'))
            for connection in "${device_connections[@]}"; do
                connections+=("\"$device [Type: $device_type\nMTU: $mtu\ninet addr: ${inet_addr:-N/A}\nMAC addr: ${mac_addr:-N/A}]\" -> \"$connection\"")
            done
        fi
    done

    # Create a Graphviz DOT file to describe the network topology
    cat << EOF > network_topology.dot
digraph NetworkTopology {
    // Define nodes
    $(for device in "${devices[@]}"; do
        inet_addr=$(nmcli device show $device | awk '/IP4.ADDRESS\[1\]/ {print $2}')
        mac_addr=$(nmcli device show $device | awk '/GENERAL.HWADDR/ {print $2}')
        device_type=$(nmcli device show $device | awk '/GENERAL.TYPE/ {print $2}')
        mtu=$(nmcli device show $device | awk '/GENERAL.MTU/ {print $2}')
        echo "    \"$device [Type: $device_type\nMTU: $mtu\ninet addr: ${inet_addr:-N/A}\nMAC addr: ${mac_addr:-N/A}]\";"
    done)

    // Define edges (connections)
    $(for connection in "${connections[@]}"; do echo "    $connection;"; done)
}
EOF

    # Generate the network diagram using Graphviz
    dot -Tpng network_topology.dot -o network_topology.png

    echo "Network diagram generated: network_topology.png"

    read -p "Press Enter to continue"
}

  



# Main script
while true; do
    display_menu
    read -p "Enter your choice number: " choice
    case $choice in
        1) view_edit_interfaces ;;
        2) manage_dns ;;
        3) manage_hostname_resolution ;;
        4) set_system_hostname ;;
        5) configure_nsswitch ;;
        6) configure_networkmanager ;;
        7) modify_kernel_parameters ;;
        8) manage_iptables ;;
        9) control_network_service_access ;;
        10) handle_interface_hostnames ;;
        11) view_edit_connections ;;
        12) deactivate_connections ;;
        13) query_network_status ;;
        14) scan_wifi_networks ;;
        15) manage_ports ;;
        16) network_scan_auto ;;
        17) generate_network_diagram ;;
        18) speedtest_network ;;
        19) ping_and_latency_test ;;
        20) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done
