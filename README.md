# Containerization workshop

## Network

- Please use IWNET while you are doing the exercise, because of EWNET's firewall 🔥

## Presentation

- [Graduate Class October 2023](containerization.pptx)

## Exercises

- [Exercise 2 - Your First Docker Container](exercise_1/README.md)
- [Exercise 3 - Docker Compose](exercise_2/README.md)
- [Exercise 4 - Load Balancing](exercise_3/README.md)

## Answers

- [Exercise 2 - Your First Docker Container](exercise_1_answers/README.md)
- [Exercise 3 - Docker Compose](exercise_2_answers/README.md)
- [Exercise 4 - Load Balancing](exercise_3_answers/README.md)

## Vagrantfile

- First download and install these binaries in this order:
  - Oracle VirtualBox (https://download.virtualbox.org/virtualbox/7.0.10/VirtualBox-7.0.10-158379-Win.exe)
  - Vagrant (https://releases.hashicorp.com/vagrant/2.3.7/vagrant_2.3.7_windows_amd64.msi)
- After installing and rebooting, open up de `cmd` of Windows (Command Prompt) or the Powershell.
- Navigate to the rootdir of this project (where `Vagrantfile` is located) and run:
  - `vagrant up`
- After the installation of the vagrant image:
  - `vagrant ssh`
- Congratulations! You're running a VM with a nice bash environment with `docker` installed on it!
  You can find the contents of this project in the `~/workshop` folder.
