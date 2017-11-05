# bash rc
## Windows git stuff - add github key to ssh-agent on login
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa-github
