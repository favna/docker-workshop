$color=@(
'Black',
'DarkBlue',
'DarkGreen',
'DarkCyan',
'DarkRed',
'DarkMagenta',
'DarkYellow',
'Gray',
'DarkGray',
'Blue',
'Green',
'Cyan',
'Red',
'Magenta',
'Yellow',
'White'
)

while($True) {
    Start-Sleep -Milliseconds 100
    Write-Host "Hysterical Error" -ForegroundColor (Get-random $color) -BackgroundColor (Get-random $color)
}