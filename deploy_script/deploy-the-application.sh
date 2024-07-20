#!/bin/bash

# Define variables
REMOTE_IP="enter the ip address of your machine you want to ssh into"
PEM_FILE="general_keys.pem"
GIT_KEY="personalized_greetings_key"
REPO_URL="git@github.com:Akyina/Christian_Akyina_Personalised_Greetings-.git"

# Copy the Git SSH key to the remote server
echo "Copying Git SSH key to remote server..."
scp -i "/home/ubuntu/environment/sshKeys/$PEM_FILE" "/home/ubuntu/environment/sshKeys/$GIT_KEY" "ubuntu@$REMOTE_IP:/tmp/$GIT_KEY"

# SSH into the remote server and execute commands
ssh -i "sshKeys/$PEM_FILE" "ubuntu@$REMOTE_IP" << EOF
    # Set correct permissions for the Git SSH key
    chmod 400 /tmp/$GIT_KEY

    # Clone the repository using the Git SSH key
    echo "Cloning repository..."
    GIT_SSH_COMMAND='ssh -i /tmp/$GIT_KEY -o StrictHostKeyChecking=no' git clone $REPO_URL

    # Confirm successful clone
    if [ $? -eq 0 ]; then
        echo "Repository cloned successfully."
    else
        echo "Failed to clone repository."
    fi

    # Optional: Remove the Git SSH key after cloning
    # rm /tmp/$GIT_KEY
EOF
."
echo "Script execution completed
