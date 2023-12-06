# 1. Retrieve a list of running processes
$processes = Get-Process

# 2. Filter processes with high CPU utilization (above 80%)
$highCPUProcesses = $processes | Where-Object { $_.CPU -gt 80 }

# 3. Save the list of high CPU utilization processes to a log file with the current date and time
$logFilePath = "C:\Users\rakku\Favorites_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"
$highCPUProcesses | Format-Table -AutoSize | Out-File -FilePath $logFilePath

Write-Host "High CPU Utilization Processes saved to: $logFilePath"
