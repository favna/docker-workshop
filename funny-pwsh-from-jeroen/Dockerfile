FROM debian:latest

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y \
    build-essential \
    curl \
    gnupg \
    apt-transport-https \
    libssl-dev

COPY --from=cgi-zscaler:latest /ca-certs/ZscalerRootCertificate-2048-SHA256.crt /ca-certs/ZscalerRootCertificate-2048-SHA256.crt
RUN bash -c 'cp /ca-certs/ZscalerRootCertificate-2048-SHA256.crt $(openssl version -d | cut -f2 -d \")/certs && update-ca-certificates'

RUN bash -c "curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -"

RUN bash -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-bullseye-prod bullseye main" > /etc/apt/sources.list.d/microsoft.list'

RUN apt update && apt install -y powershell

ADD funny.ps1 funny.ps1

SHELL [ "pwsh" ]

CMD [ "pwsh", "-c", ".\\funny.ps1" ]
