# Containerization workshop

## Network

- Please use IWNET while you are doing the exercises, because of EWNET's firewall 🔥

## Presentation

~- [Containerization PowerPoint](containerization.pptx)~ moved to internal repository

## Requirements

Before you start, you should at least have this running:
- WSL2 (Ubuntu)
- Docker engine / CLI

Installation instructions can be found here:
- WSL (Ubuntu): https://learn.microsoft.com/en-us/windows/wsl/install
- Docker: https://docs.docker.com/engine/install/ubuntu

☝️ Tip: make a symbolic link in Ubuntu to the exercises directory, for example: 
`ln -s /mnt/c/Users/{you-username}/{your-workspace}/docker-workshop ~/docker-workshop`

So you can use your favorite IDE to edit the files in Windows, and run the Docker CLI in Ubuntu.

## Exercises

- [Exercise 1 - Your First Docker Container](./exercises/exercise_1/README.md)
- [Exercise 2 - Docker Compose](./exercises/exercise_2/README.md)
- [Exercise 3 - Load Balancing](./exercises/exercise_3/README.md)

## Answers

- [Exercise 1 - Your First Docker Container](./exercises/exercise_1_answers/README.md)
- [Exercise 2 - Docker Compose](./exercises/exercise_2_answers/README.md)
- [Exercise 3 - Load Balancing](./exercises/exercise_3_answers/README.md)

## Optional: Vagrantfile

### ❗This is deprecated, but still a possibility to use as a last resort

- First download and install these binaries in this order:
  - Oracle VirtualBox (https://download.virtualbox.org/virtualbox/7.1.0/VirtualBox-7.1.0-164728-Win.exe)
  - Vagrant (https://releases.hashicorp.com/vagrant/2.4.1/vagrant_2.4.1_windows_i686.msi)
- After installing and rebooting, open up `cmd` of Windows (Command Prompt) or the Powershell.
- Navigate to the rootdir of this project (where `Vagrantfile` is located) and run:
  - `vagrant up`
- After the installation of the vagrant image:
  - `vagrant ssh`
- Congratulations! You're running a VM with a nice bash environment with `docker` installed on it! You can find the
  contents of this project in the `~/workshop` folder.

## Troubleshooting
- Important: you’ll need root access to run the installation commands (e.g., `sudo`), so make sure you remember the password you set during the Ubuntu installation.
- Hint: you can always access your Windows disk in Ubuntu if you want to transfer files from Windows to Ubuntu, it is located here: `/mnt/c`
- Your Windows home folder is located here: `/mnt/c/Users/{your-username}`
- If you’re having network/certificate errors in Ubuntu, make sure you are NOT on the corporate EWNET Wifi network (use IWNET or your Wifi at home).
- Or it’s probably the (in)famous Zscaler certificate, copy the Zscaler PEM and CRT files to: `/usr/local/share/ca-certificates` and run: `sudo update-ca-certificates`


