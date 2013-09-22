# VPS setup scripts

## Installation

## Usage

### Step 1: Upload the initial setup script

    ./upload-initial-setup-script root@yourserver.com

### Step 2: Connect to the server and run the initial-setup script.

    ssh root@yourserver.com
    ./initial-setup

The script will ask a password for your new user, information for the new user, your timezone and the locales you
want to build.

### Step 3: Upload your public key for the deployer user

From your **local** machine:

    ./ssh-copy-id deployer@yourserver.com

You should be able to connect to the server without a password:

    ssh deployer@yourserver.com

### Step 4: Upload the server_scripts with the user you have created

    ./upload-server-scripts deployer@yourserver.com

### Step 5: Connect to the server with the deployer user and run the secure-server script

You can edit the secure-server script and change the $SSH_PORT variable to another port.

Then run:

    ssh deployer@yourserver.com
    ./server_scripts/secure-server

You won't be able to connect through ssh with the root user anymore.

You won't be able to login through ssh with password auth anymore.

iptables will only allow external connections to http, https and ssh ports.

### Step 6 (optional): Run application installation scripts

You can run the different application installation scripts from server_scripts/applications.
