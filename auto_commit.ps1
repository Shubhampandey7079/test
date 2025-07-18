# Move to your Git repo folder
cd "C:\Users\shubh\test"

# Random number of commits between 30 and 40
$commitCount = Get-Random -Minimum 30 -Maximum 41

for ($i = 1; $i -le $commitCount; $i++) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Add-Content log.txt "Commit $i at $timestamp"
    git add log.txt
    git commit -m "Auto commit $i at $timestamp"
    Start-Sleep -Seconds (Get-Random -Minimum 1 -Maximum 2)
}

git push origin main
