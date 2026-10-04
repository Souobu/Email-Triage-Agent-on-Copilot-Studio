# Checks that required tools are installed.
$tools = @("git", "gh", "az", "terraform", "pac")
foreach ($t in $tools) {
    if (Get-Command $t -ErrorAction SilentlyContinue) {
        Write-Host "OK      $t"
    } else {
        Write-Host "MISSING $t" -ForegroundColor Yellow
    }
}
Write-Host "Next: gh auth login; az login; pac auth create --environment <dev-url>"
