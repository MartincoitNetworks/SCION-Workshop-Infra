# setup for workshop - addusers, etc...

# add the workshop user
adduser --disabled-password --gecos "" workshop
echo "workshop:Berlin2022" | sudo chpasswd
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
systemctl restart sshd


# give the workshop user su permissions
cat > /etc/sudoers.d/91-workshop << EOF
# place in /etc/sudoers.d/91-workshop
# chmod 440
# User rules for workshop
workshop ALL=(ALL) NOPASSWD:ALL
EOF



# workshop public key
sudo -u workshop mkdir ~workshop/.ssh
chown workshop ~workshop/.ssh
chmod 700 ~workshop/.ssh
sudo -u workshop cat >> ~workshop/.ssh/authorized_keys << EOF
ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBD2tGw5pMyqma6LZ5SGEptD1v5CivnNY8R/pPJy6m4eHnvL91ihlYYvYxPoydNBbEXu6ABE3xEgBOJlEO/W5ly8= sedna-2022-05-13
ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBHB4ygmO1/aCmO0VIOa3E79u/Lv7cmXqkOEaBIue3gJlrb77qGmgvTXwf6rgZOCOwCsjgT4STG2R1HtT7lfffj4= workshop@r2-30-de1
EOF
chown workshop ~workshop/.ssh/authorized_keys
chmod 400 ~workshop/.ssh/authorized_keys

