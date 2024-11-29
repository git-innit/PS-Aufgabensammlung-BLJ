$outpath = "C:\pcinfo.html"
$name = (Get-CimInstance -ClassName Win32_ComputerSystem).Name
$cpu = (Get-CimInstance -ClassName Win32_Processor).Name
$ram = (Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB
$diskfree = (Get-PSDrive -Name C).Free / 1GB
$diskused = (Get-PSDrive -Name C).Used / 1GB
$disktotal = $diskused + $diskfree
$osversion = (Get-CimInstance Win32_OperatingSystem).Version
$architecture = (Get-CimInstance Win32_OperatingSystem).Osarchitecture
$language = Get-WinSystemLocale
$manufacturer = (Get-CimInstance Win32_ComputerSystem).Manufacturer
$biosbersion = (Get-CimInstance Win32_BIOS).BIOSVersion
$htmlcontent = @"
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>HTML TABLE</title>
</head><body>
<table>
<colgroup><col/></colgroup>
<tr><th>*</th></tr>
<tr><td>Computernamen: $name</td></tr>
<tr><td>CPU: $cpu</td></tr>
<tr><td>RAM Grösse (GB): $ram</td></tr>
<tr><td>Festplattengrösse (GB): $disktotal</td></tr>
<tr><td>Freier Speicherplatz (GB): $diskfree</td></tr>
<tr><td>Belegter Speicherplatz (GB): $diskused</td></tr>
<tr><td>Windows Version: $osversion</td></tr>
<tr><td>Architektur: $architecture</td></tr>
<tr><td>OS Sprache: $language</td></tr>
<tr><td>Hersteller: $manufacturer</td></tr>
<tr><td>Bios Version: $biosbersion</td></tr>
</table>
</body></html>
"@
$htmlcontent | Out-File -FilePath $outpath -Encoding utf8