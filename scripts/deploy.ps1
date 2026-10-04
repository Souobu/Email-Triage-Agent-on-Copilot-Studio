param(
    [Parameter(Mandatory = $true)][string]$EnvironmentUrl,
    [Parameter(Mandatory = $true)][string]$SettingsFile,
    [string]$SolutionZip = "out/EmailTriage_Managed.zip"
)

pac auth create --environment $EnvironmentUrl
pac solution import --path $SolutionZip --settings-file $SettingsFile --activate-plugins --publish-changes
