$language = "de"
$count = "2"
$response = Invoke-RestMethod -Uri "https://witzapi.de/api/joke/?limit=$count&language=$language" -Method Get
$i = 1
foreach ($text in $response) {
Write-Host "[$i] $($text.text)"
$i++
}