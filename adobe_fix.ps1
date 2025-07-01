# adobe_fix.ps1: Enable Adobe Acrobat services by modifying the Windows registry
# Purpose: Fixes disabled services in Adobe Acrobat DC as per Adobe documentation
# Reference: https://www.adobe.com/devnet-docs/acrobatetk/tools/DesktopDeployment/singleinstaller.html#enable-services

try {
    # Define the registry path and value for enabling services
    $regPath = "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown"
    $name = "bIsSCReducedModeEnforcedEx"
    $value = 1
    $type = "DWORD"

    # Check if the registry path exists using a boolean condition
    if (-not (Test-Path $regPath)) {
        # Create the registry path if it doesn't exist
        New-Item -Path $regPath -Force | Out-Null
        Write-Host "Created registry path: $regPath"
    }

    # Set the registry value to enable services
    Set-ItemProperty -Path $regPath -Name $name -Value $value -Type $type

    Write-Host "Registry value set successfully: $name = $value"
}
catch {
    Write-Host "Error: Failed to set registry value. $_"
}
