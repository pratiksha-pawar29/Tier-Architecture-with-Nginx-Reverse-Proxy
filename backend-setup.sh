
#!/bin/bash
set -e

sudo dnf update -y
sudo dnf install httpd -y

echo "<h1>Welcome to the Backend Server</h1>" | sudo tee /var/www/html/index.html

sudo systemctl enable httpd
sudo systemctl start httpd

echo "Backend web server installed."

