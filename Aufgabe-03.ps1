Set-Location -Path C:\
Get-ChildItem
New-Item -Name "mytest" -ItemType directory
Get-ChildItem -Name m* -Recurse
Write-Host $pshome
Set-Location -Path C:\mytest
"my fancy text file :-)" | Set-Content -Path .\testfile.txt
Get-Date
Clear-Host
Get-Command -Name *get-c*
Get-ComputerInfo