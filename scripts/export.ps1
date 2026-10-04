param([string]$SolutionName = "EmailTriage")

New-Item -ItemType Directory -Force -Path out | Out-Null
pac solution export --path "out/$SolutionName.zip" --name $SolutionName --managed false --overwrite
pac solution unpack --zipfile "out/$SolutionName.zip" --folder "solutions/$SolutionName" --packagetype Unmanaged --allowDelete true --allowWrite true
Write-Host "Exported and unpacked $SolutionName. Review with git diff."
