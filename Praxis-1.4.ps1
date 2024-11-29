$path = "C:\"
$size = "10MB"
Get-ChildItem -Path "$path" -Recurse -File -Include *.exe -ErrorAction SilentlyContinue | Where-Object {$_.Length -gt $size} | Select-Object FullName, Length -First 100 | ConvertTo-Csv -NoTypeInformation -Delimiter ";" | Out-File -Encoding utf8 -FilePath C:\dateienexe10mb.csv