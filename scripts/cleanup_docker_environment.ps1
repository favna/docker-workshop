Write-Host "-----------------------------"
Write-Host "cleaning all images and volumes"
docker system prune --all --force --volumes
Write-Host "done."
Write-Host "-----------------------------"
