sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
cd /home/ubuntu
rm -rf dockerImageNode
git clone https://github.com/satishnaidu10/dockerImageNode.git
cd dockerImageNode
sudo docker build -t satishnaidu10/node-web-app .
sudo docker run -p 49160:8080 -d satishnaidu10/node-web-app
