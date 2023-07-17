# Additional installation instructions

## Fixing Docker Desktop WSL2 memory leak

Docker Desktop has a memory leak that affects machines using WSL2. To fix this we need to follow these steps:

1. In your home directory (i.e. `C:\users\<your_user>`) create a file called `.wslconfig`.  
    **Make sure it is _exactly_ `.wslconfig`, not `.wslconfig.txt` or anything similar. Yes the file name is empty, and the extension is `.wslconfig`!**
2. Open this file in a text editor, all CGI laptops come pre-installed with Notepad++ which you can use here.
3. Copy and paste the following content into the file:

    ```properties
    [wsl2]
    memory=6GB
    ```

4. Save the file
5. Restart your machine to ensure this is loaded correctly
