$path = "C:\"
Get-ChildItem -Path "$path" -Recurse -File -Include *.jpg, *.jpeg -ErrorAction SilentlyContinue | Select-Object FullName | ConvertTo-HTML | Out-File -FilePath C:\dateienjpg.html