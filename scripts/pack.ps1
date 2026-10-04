param([string]$SolutionName = "EmailTriage", [ValidateSet("Managed","Unmanaged")][string]$Type = "Managed")

New-Item -ItemType Directory -Force -Path out | Out-Null
pac solution pack --zipfile "out/${SolutionName}_$Type.zip" --folder "solutions/$SolutionName" --packagetype $Type
