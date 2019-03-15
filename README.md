# Setup
Before you begin, please ensure that you have setup your ssh keys.

    ssh-keygen
    ...
    cat ~/.ssh/id_rsa.pub

Copy the output of the above command into your github account

# Provisioning
If you are setting up your linux machine for the first time run the following:

./init.sh

# Updating
To keep your machine up to date later on you can run:

./provision.sh



