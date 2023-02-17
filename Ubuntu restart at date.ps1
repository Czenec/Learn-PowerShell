$Time = "08:47"

$TotalSeconds = ((get-date $Time) - (get-date)).TotalSeconds;
Write-Output $TotalSeconds

start-sleep ((get-date $Time) - (get-date)).TotalSeconds;

Write-Output "BOM"

sudo shutdown -r now