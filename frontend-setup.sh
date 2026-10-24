
#!/bin/bash
set -e

sudo dnf update -y
sudo dnf install nginx -y

sudo systemctl enable nginx
sudo systemctl start nginx

echo "Nginx reverse proxy installed."
