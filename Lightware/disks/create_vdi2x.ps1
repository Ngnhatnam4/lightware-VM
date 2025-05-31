# .vdi2x Disk Creator Script
param (
    [string]$DiskPath = "lightware_disk.vdi2x",
    [int]$SizeMB = 200
)

$fs = [System.IO.File]::Create($DiskPath)
$fs.SetLength($SizeMB * 1MB)
$fs.Close()
Write-Output "Created .vdi2x disk of size $SizeMB MB at $DiskPath"
