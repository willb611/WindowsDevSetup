# What is this repo? (WindowsDevSetup)
Stuff to go in my Users home directory on windows i.e. `C:\Users\Will`

## How do I use this?
`cd ~;
git init;
git remote add origin https://github.com/willb611/WindowsDevSetup.git;
git pull origin master;`

## Other relevant repositories? 
- [Dotphiles (config files)](https://gitlab.com/willb611/dotphiles)
- [bash-it (completions and alias, etc)](https://github.com/willb611/bash-it)
- [Jetbrains settings repository](https://github.com/willb611/settings-jetbrains)

### How do I use Jetbrains settings repository?
Using Jetbrains settings plugin. The repository can be found on disk somewhere. In Windows I found it at: ```C:\Users\Will\.IntelliJIdea2017.3\config\settingsRepository```


### SysInternals
Can be downloaded [https://docs.microsoft.com/en-us/sysinternals/downloads/sysinternals-suite].

#### Adding to context "send to" right click menu (for sdelete)
Following https://devblogs.microsoft.com/oldnewthing/20170403-00/?p=95885.
- open "Send to" folder by typing "shell:sendto" in File explorer Window path
- add a shortcut to the sdelete file, e.g. "C:\Program Files\Sysinternals\sdelete64.exe"
