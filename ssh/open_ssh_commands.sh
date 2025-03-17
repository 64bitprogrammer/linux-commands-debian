# ================== REGULAR USE ======================================
# Bash commands for most common use and troubleshooting

# Connect to remote server. Port number optional
sudo ssh username@ip-address -p <port-number>

#Example
sudo ssh admin@192.168.1.100

# =================== TROUBLESHOOTING ==================================

# Troubleshoot 1 - WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED! 
# -R hostname Removes all keys belonging to hostname from a known_hosts file. This option is useful to delete hashed hosts (see the -H option above).

ssh-keygen -R <host>

#Example

ssh-keygen -R 192.168.1.100

# Example with port number specified
ssh-keygen -R [127.0.0.1]:3022