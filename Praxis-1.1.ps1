$path = "C:\"
$days = 30
Get-ChildItem -Path "$path" -Recurse -File -ErrorAction SilentlyContinue | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays($days)} | Select-Object FullName | ConvertTo-HTML | Out-File -FilePath C:\dateien30d.html