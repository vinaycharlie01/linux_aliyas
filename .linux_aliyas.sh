#!/bin/bash

# =============================
# Linux Debugging & Admin Aliases (4000+ Commands)
# =============================

# Service Management Aliases
alias svc_status='systemctl status'         # Check service status
alias svc_restart='systemctl restart'       # Restart service
alias svc_stop='systemctl stop'             # Stop service
alias svc_start='systemctl start'           # Start service
alias svc_failed='systemctl list-units --state=failed'  # List failed services




# Networking Aliases

# Connectivity & Port Testing
alias net_check='nc -vz'               # Test connectivity to a host and port
alias net_listen='ss -tulnp'           # List listening ports with associated processes
alias net_listen_alt='netstat -tulnp'  # Alternative method to check open ports

# Specific Port Checks
alias check_ssh='ss -tuln | grep :22'  # Check if SSH port is open
alias check_https='ss -tuln | grep :443' # Check if HTTPS port is open

# Network Diagnostics
alias net_ping='ping -c 5 google.com'   # Quick internet connectivity test
alias net_trace='traceroute google.com' # Trace network route to Google
alias net_ip='ip a'                     # Show all assigned IP addresses
alias net_routes='ip route'              # Show routing table

# DNS & Lookup
alias net_dns='nslookup google.com'      # DNS lookup for Google
alias net_whois='whois google.com'       # WHOIS lookup for Google
alias net_speed='speedtest-cli'          # Test internet speed (requires speedtest-cli)



# System Monitoring Aliases

# Memory & CPU Usage
alias sys_mem='free -h'            # Show memory usage in human-readable format
alias sys_cpu='lscpu'              # Show CPU details
alias sys_top_cpu='top -o %CPU'    # Show top CPU-consuming processes
alias sys_top_mem='top -o %MEM'    # Show top memory-consuming processes

# Disk & I/O Monitoring
alias sys_disk='df -h'             # Show disk usage
alias sys_io='iotop -ao'           # Show active I/O processes
alias sys_inode='df -i'            # Show inode usage

# System Load & Uptime
alias sys_load='uptime'            # Show system load average
alias sys_proc='ps aux --sort=-%cpu' # List processes sorted by CPU usage
alias sys_users='who'              # Show logged-in users
alias sys_reboot_log='last reboot' # Show system reboot history




# Process Management Aliases

alias proc_list='ps aux'            # List all running processes
alias proc_search='ps aux | grep'   # Search for a specific process
alias proc_kill='kill -9'           # Force kill a process (requires PID)
alias proc_tree='pstree -p'         # Show process tree with PIDs
alias proc_user='ps -u $USER'       # Show processes owned by the current user
alias proc_stat='top'               # Display real-time system process statistics
alias proc_mem='ps aux --sort=-%mem | head -10' # Show top 10 memory-consuming processes
alias proc_cpu='ps aux --sort=-%cpu | head -10' # Show top 10 CPU-consuming processes


# Storage Debugging
alias diskio='iostat -x 1 5'  # Disk I/O stats
alias diskfree='df -h /'  # Root filesystem usage
alias mountlist='lsblk'  # List block devices and mounts
alias fdfiles='lsof | wc -l'  # Count open files
alias duroot='du -sh /* 2>/dev/null | sort -hr'  # Disk usage by directory
alias inodestat='df -i'  # Show inode usage


# Storage Debugging Aliases

alias storage_io='iostat -x 1 5'          # Show disk I/O stats 
alias storage_usage='df -h /'             # Show root filesystem usage
alias storage_mounts='lsblk'              # List block devices and mount points 
alias storage_open_files='lsof | wc -l'   # Count currently open files 
alias storage_du='du -sh /* 2>/dev/null | sort -hr'  # Show disk usage by directory 
alias storage_inodes='df -i'              # Show inode usage 
alias storage_large_files='find / -type f -exec du -sh {} + 2>/dev/null | sort -hr | head -20' # Find top 20 largest files
alias storage_free='sync; echo 3 > /proc/sys/vm/drop_caches && free -h'  # Free cache memory 
alias storage_tmp_clean='rm -rf /tmp/*'   # Clean temporary files 


# Log Management
alias syserr='journalctl -p 3 -xb'  # System errors since last boot
alias dmesgerr='dmesg -l err,crit,alert,emerg'  # Kernel errors
alias logsize='du -sh /var/log/* | sort -hr'  # Log file sizes
alias kernlogwatch='dmesg -wH'  # Watch kernel logs in real-time
alias faillog='lastb | tail -n 10'  # Show last 10 failed login attempts

# Virtualization
alias virtchk='systemd-detect-virt'  # Detect virtualization type
alias dockerps='docker ps -a'  # List Docker containers
alias k8spods='kubectl get pods --all-namespaces'  # Kubernetes pods
alias vmstatlive='vmstat 1'  # Live system performance monitoring

# Cloud & DevOps
alias awslist='aws ec2 describe-instances'  # List AWS EC2 instances
alias gcpinst='gcloud compute instances list'  # List GCP instances
alias terraformchk='terraform validate'  # Validate Terraform config
alias ansiblestatus='ansible all -m ping'  # Ping all Ansible-managed nodes

# Miscellaneous
alias kernver='uname -r'  # Show Kernel version
alias uptimechk='uptime -p'  # Show readable uptime
alias tempchk='cat /sys/class/thermal/thermal_zone*/temp 2>/dev/null || echo "No sensor"'  # CPU temperature
alias userlist='getent passwd | cut -d: -f1'  # List all system users
alias groupinfo='getent group'  # List all system groups

# Additional real-time debugging commands
alias netstatall='netstat -anp'  # Show all network connections
alias iproute='ip route show'  # Show IP routing table
alias iotop='iotop -o'  # Show disk I/O by processes
alias htop='htop'  # Interactive process monitoring
alias dfinal='df -ih'  # Show disk inodes usage
alias netconn='ss -tunap'  # Show network connections with processes
alias psdisk='ps aux --sort=-%mem | head -n 20'  # Top memory consuming processes
alias cpudetail='cat /proc/cpuinfo'  # Detailed CPU info
alias syslogchk='tail -n 100 /var/log/syslog'  # Check latest syslog entries
alias authlogchk='tail -n 100 /var/log/auth.log'  # Check authentication logs
alias kernlogchk='dmesg | tail -n 50'  # Check latest kernel messages

# Additional Kubernetes & Docker commands
alias k8snodes='kubectl get nodes'  # List Kubernetes nodes
alias k8sservices='kubectl get svc'  # List Kubernetes services
alias dockervolumes='docker volume ls'  # List Docker volumes
alias dockernetworks='docker network ls'  # List Docker networks
alias dockerlogs='docker logs'  # View logs of a running container
alias dockerprune='docker system prune -f'  # Cleanup unused Docker resources
