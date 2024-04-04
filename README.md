# Containerization workshop

## Network

- Please use IWNET while you are doing the exercises, because of EWNET's firewall 🔥

## Presentation

- [Graduate Class October 2023](containerization.pptx)

## Exercises

- [Exercise 1 - Your First Docker Container](./exercises/exercise_1/README.md)
- [Exercise 2 - Docker Compose](./exercises/exercise_2/README.md)
- [Exercise 3 - Load Balancing](./exercises/exercise_3/README.md)

## Answers

- [Exercise 1 - Your First Docker Container](./exercises/exercise_1_answers/README.md)
- [Exercise 2 - Docker Compose](./exercises/exercise_2_answers/README.md)
- [Exercise 3 - Load Balancing](./exercises/exercise_3_answers/README.md)

## Optional: Vagrantfile

- First download and install these binaries in this order:
  - Oracle VirtualBox (https://download.virtualbox.org/virtualbox/7.0.14/VirtualBox-7.0.14-161095-Win.exe)
  - Vagrant (https://releases.hashicorp.com/vagrant/2.4.1/vagrant_2.4.1_windows_amd64.msi)
- After installing and rebooting, open up `cmd` of Windows (Command Prompt) or the Powershell.
- Navigate to the rootdir of this project (where `Vagrantfile` is located) and run:
  - `vagrant up`
- After the installation of the vagrant image:
  - `vagrant ssh`
- Congratulations! You're running a VM with a nice bash environment with `docker` installed on it! You can find the
  contents of this project in the `~/workshop` folder.
