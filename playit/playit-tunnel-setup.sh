# Playit is a tunneling service for tcp / udp / http to setup tunnel beween machines. 
# Example: Minecraft server to host from personal pc and share a public ip/url for freinds to connect to

# Installation setup
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null

echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee 
/etc/apt/sources.list.d/playit-cloud.list

sudo apt update

sudo apt install playit


# Running playit agent
sudo playit

# For  first time setup follow the url listed in the terminal and all with be setup via the browser.
