# Podman and podman compose installation

1. Go to <https://github.com/containers/podman/releases/latest>
1. Scroll down to "assets"
1. Click "podman-4.6.0-setup.exe" or whichever is the latest version
1. Run the installer
1. Unselect the box "Telemetry"
1. Click "Next"

## Installing compose

1. In the menu at the bottom there will be the text "Compose" with a download button, hover over it and it says "Install
   compose"
1. Click the button
1. Select the highest version
1. When Podman prompts if the installation should be made system wide press Yes
1. Podman should now confirm that the installation was successful
1. Press ok

## Installing Podman and Docker container engine

1. Go to <https://learn.microsoft.com/en-us/windows/wsl/install-manual#step-3---enable-virtual-machine-feature>
1. This should take you to a Microsoft page with a "dism" command
1. Open a PowerShell AS ADMINISTRATOR
1. Copy the dism.exe command and paste it then run it
1. Wait for the installation to finish
1. In the same PowerShell window type `wsl.exe --install`
1. Reboot your laptop. This is an important step!
1. A windows update-like process should start now, this is to enable the virtual machine platform

1. Upon logging in a window should open with the title "Ubuntu"
1. It will show text saying that it is busy installing
1. Wait for this to finish

1. When finished it will ask you for your UNIX username. Enter a simple username, for example your first name. It will
   not allows special characters!
1. It will then prompt for a password, type the password. You will NOT see what you typed, but it will be entered!
1. Once you get a prompt similar to `yourusername@yourcomputername:~$` you can close the window.

1. Open Podman Desktop
1. Click the "Install" icon at the top right (with the rocket next to it)
1. When prompted if you would like to install the Podman container engine, click "Yes"
1. A new window with Welcome to Podman Setup will open
1. Keep "Install WSL if not present" selected
1. Click "Install"
1. Wait for the installation to finish
1. Click "Close"
1. Click "Initialize and start" in Podman Desktop
1. Wait for the initialization to finish
1. Podman Desktop should now say "Podman is running"

1. If there is still a warning about Compose (with a danger triangle) then click it again, it should change to a
   checkmark

1. Open a PowerShell AS ADMINISTRATOR
1. Type `podman machine stop`
1. Type `podman machine set --rootful`
1. Type `podman machine start`

1. Reboot your laptop one final time

---

## Some other notes

1. Podman Desktop should be started automatically with Windows
1. A Podman Desktop shortcut should have been added to your desktop.
1. For the official Podman on Windows guide see <https://github.com/containers/podman/blob/main/docs/tutorials/podman-for-windows.md>
