FROM mcr.microsoft.com/dotnet/runtime:6.0
COPY app/bin/Release/net6.0/publish/ app/
ENTRYPOINT ["dotnet", "app/myapp.dll"]