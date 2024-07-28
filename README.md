# What is this repo? (WindowsDevSetup)
Stuff to go in my Users home directory on windows i.e. `C:\Users\Will`

## Pre-requisite?
Some kind of git of preferred. Otherwise you should be able to download the folder as zip file and extract it.

Usually I install [Git bash](https://github.com/git-for-windows/git)

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

#### Extracting
Extract to suitable location, e.g. ```C:\Program Files\Sysinternals```

#### Adding to context "send to" right click menu (for sdelete)
Following https://devblogs.microsoft.com/oldnewthing/20170403-00/?p=95885.
- open "Send to" folder by typing "shell:sendto" in File explorer Window path
- add a shortcut to the sdelete file, e.g. "C:\Program Files\Sysinternals\sdelete64.exe"

### Icloud photos setup
There is no option in the app to change download location of photos (for example, so they're not downloaded on a small C: drive).  Microsoft Answers suggests its not possible to change location: https://answers.microsoft.com/en-us/windows/forum/all/icloud-photos-path-change/be4472ac-08f7-47fc-ae19-0c08644b897e

#### Changing Icloud photo download location (to separate drive on the same PC)
This uses `mklink` functionality to trick iCloud app into saving somewhere other than the primary drive.


1. Open run `Windows Key + r`
2. Type `msconfig` and hit enter
3. In the `msconfig` window `Boot` tab, select safe mode (so icloud photos app doesn't start)#
4. There should be a popup giving the option to `restart now`, click that (or otherwise restart from start menu)
5. Ensure directory is created where you want to save photos (e.g. `F:\Pictures\iCloud Photos\Photos`)
6. Open command line
7. Navigate to my photos, e.g. `C:\Users\{my_username}\Pictures\`
8. If iCloud Photos directory is not created, create it `iCloud Photos`: `C:\Users\{my_username}\Pictures\iCloud Photos`
9. Using command line, while in the `C:\Users\{my_username}\Pictures\iCloud Photos`, to the destination `mklink /J Photos "F:\Pictures\iCloud Photos\Photos"`
10. Check using file explorer it all worked, navigating to `C:\Users\{my_username}\Pictures\iCloud Photos` you should see the link named `Photos`
11. Open `msconfig` again, untick `safe mode`, reboot Windows
12. If `icloud Photos` application doesn't start, then open it, it should start downloading and syncing photos to your desired drive `F:\Pictures\iCloud Photos\Photos`


### Choco
[Chocolatey](https://community.chocolatey.org/) is a package manager for Windows.

I usually install it, along with packages:

- [make](https://community.chocolatey.org/packages/make) (for Makefile)

### FastCopy
[Fastcopy](https://en.wikipedia.org/wiki/FastCopy) can be used for copying files or directories while preserving file attributes (e.g. date created). Installer include a built-in add-on for the windows context menu (e.g. while using file browser).



