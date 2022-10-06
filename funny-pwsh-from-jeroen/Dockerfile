FROM debian:latest

RUN apt update  && apt install -y curl gnupg apt-transport-https

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

RUN sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-bullseye-prod bullseye main" > /etc/apt/sources.list.d/microsoft.list'

RUN apt update && apt install -y powershell

ADD funny.ps1 funny.ps1

SHELL [ "pwsh" ]

CMD [ "pwsh", "-c", ".\\funny.ps1" ]
