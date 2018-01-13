# bash rc
## Windows git stuff - add github key to ssh-agent on login
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa-github

# Create Gitignores easily... try `gi linux`
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
