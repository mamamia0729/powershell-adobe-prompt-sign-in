# Adobe Acrobat Prompt Sign In Issue

## Problem Overview
Acrobat repeatedly prompts for sign-in

## Project Overview
This PowerShell script, `adobe_fix.ps1`, automates the process of enabling services in Adobe Acrobat by modifying the Windows Registry

## Skills Demonstration
* **PowerShell scripting** for system administration and automation.
* **Conditional logic** using `if` statements to check registry paths.
* **Error handling** with `try-catch` for robust execution.
* **Boolean logic** to validate conditions (e.g., `Test-Path`)

## Requirements
* **Operating System**: Windows (tested on Windows 10/ 11)
* **PowerShell**: Version 5.1 or later
* **Permission**: Administrative privileges to modify the Windows Registry.

## Usage
* Run the script in `PowerShell` with administrative privileges.
* The script checks if the registry path `HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown` exists. If it doesn't exist, it creates the path.
* Sets the registry value `bIsSCReducedModeEnforcedEx` to `1` (DWORD) to enable services.
* Outputs success or error messages.
  
## Future Enhancements 
* Add validation for Adobe Acrobat installation before modifying the registry.
* Support multiple Adobe versions by dynamically detecting the registry path.
* Include a rollback option to revert registry changes.
* Integrate with GitHub Actions to test the script on Windows runners.
