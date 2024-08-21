#!/bin/bash



# Step 1: Install EPEL repository, Git, and Ansible
dnf install epel-release git mlocate -y && dnf install ansible -y

# Step 2: Configure Git to store credentials
git config --global credential.helper store

# Step 3: Set Git global username
git config --global user.name "wazeem"

# Step 4: Set Git global email
git config --global user.email "induslevel@gmail.com"

# Step 5: Clone the specified repository
cd /root
git clone https://github.com/induslevel/server-setup-via-ansible.git

# Step 6: Change directory to the cloned repository
cd server-setup-via-ansible

# Step 7: Create a vault password file
echo 'your_secure_password_here' > /root/.vault_pass.txt
chmod 600 /root/.vault_pass.txt

echo 'Run the command'
echo 'cd server-setup-via-ansible && ansible-playbook --vault-password-file /root/.vault_pass.txt playbooks/site.yml'
