#!/bin/sh

sudo apt-get upgrade -y
sudo apt-get update -y
sudo apt install net-tools -y 

curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt-get install -y nodejs
node --version 

npm install --global yarn 
npm install ts-node -g
npm install serve -g 
npm install pm2 -g 

sh -c "$(curl -sSfL https://release.solana.com/v1.7.13/install)"

export PATH="/root/.local/share/solana/install/active_release/bin:$PATH"


solana-keygen new -o /root/.config/solana/id.json
solana config set --url https://api.devnet.solana.com
solana airdrop 1 

mkdir /root/metaplex-foundation
cd /root/metaplex-foundation
git clone https://github.com/metaplex-foundation/metaplex.git
cd metaplex/js/packages/cli

npm install ufw
ufw allow 22 
ufw allow ssh 
ufw allow 1337
ufw allow 80
ufw allow http
ufw allow https
ufw  reload 

sudo apt-get upgrade -y
sudo apt-get update -y
sudo apt install net-tools -y 

curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt-get install -y nodejs
node --version 

npm install --global yarn 
npm install ts-node -g
npm install serve -g 
npm install pm2 -g 
npm install ufw
ufw allow 22 
ufw allow ssh 
ufw allow 1337
ufw allow 80
ufw allow http
ufw allow https
ufw  reload 


