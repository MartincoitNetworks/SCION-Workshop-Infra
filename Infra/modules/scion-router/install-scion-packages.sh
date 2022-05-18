sudo apt-get install -y apt-transport-https ca-certificates
echo "deb [trusted=yes] https://packages.netsec.inf.ethz.ch/debian all main" | sudo tee /etc/apt/sources.list.d/scionlab.list
sudo apt-get update -y
sudo apt-get install -y scionlab

# applications
sudo apt-get install scion-apps-*
sudo apt install scion-apps-bat

# start services
sudo systemctl start scionlab.target

# start web visualization
sudo systemctl start scion-webapp

# 
#sudo scionlab-config --host-id=XXX --host-secret=YYY


sudo apt install scion-sig
sudo systemctl start scion-ip-gateway.service

