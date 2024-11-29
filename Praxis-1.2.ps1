$path = "C:\"
$size = "10MB"
Get-ChildItem -Path $path -Recurse -File -ErrorAction SilentlyContinue | Where-Object {$_.Length -gt $size} | Select-Object FullName, Length -First 100 | ConvertTo-Csv -NoTypeInformation -Delimiter ";" | Out-File -Encoding utf8 -FilePath C:\dateien10mb.csv