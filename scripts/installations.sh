sudo apt update
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az --version

sudo apt update
sudo apt install git -y
git --version

sudo apt update
sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform -y
terraform -version

sudo apt update
sudo snap install --classic kubectl
kubectl version --client

sudo apt update
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt-get install nodejs -y
node -v
npm -v


sudo apt-get update
curl -fsSL https://get.docker.com | sudo sh
sudo groupadd -f docker
sudo usermod -aG docker "$USER"
sudo systemctl enable --now docker
sudo apt-get install -y docker-compose-plugin
docker --version
docker compose version


sudo snap install helm --classic

sudo apt-get update
sudo apt-get install -y tree curl unzip jq

sudo az aks install-cli

sudo npm install -g corepack
sudo corepack enable
corepack prepare yarn@stable --activate

yarn --version
