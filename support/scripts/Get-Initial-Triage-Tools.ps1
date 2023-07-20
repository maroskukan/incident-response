# Downloads required tools for initial triage

# Define the key-value data structure with file names and corresponding URLs
$fileUrls = @{
    "winpmem_mini_x64_rc2.exe" = "https://github.com/Velocidex/WinPmem/releases/download/v4.0.rc1/winpmem_mini_x64_rc2.exe"
    "winpmem_mini_x86.exe" = "https://github.com/Velocidex/WinPmem/releases/download/v4.0.rc1/winpmem_mini_x86.exe"
    "RawCap.exe" = "https://www.netresec.com/?download=RawCap"
    "SysinternalsSuite.zip" = "https://download.sysinternals.com/files/SysinternalsSuite.zip"

}

# Loop through the key-value data structure
foreach ($file in $fileUrls.Keys) {
    $url = $fileUrls[$file]
    $localFilePath = ".\$file"
    
    # Check if the file already exists
    if (Test-Path $localFilePath) {
        Write-Host "The file '$file' already exists in the current directory."
    } else {
        Write-Host "The file '$file' does not exist. Downloading..."
        
        # Download the file using curl (Invoke-WebRequest)
        try {
            Invoke-WebRequest -Uri $url -OutFile $localFilePath
            Write-Host "File '$file' downloaded successfully."
            
            # Check if the downloaded file is a ZIP file and extract it if necessary
            if ($file -like "*.zip") {
                $destinationFolder = Join-Path -Path "." -ChildPath $file.Replace('.zip', '')
                Write-Host "Extracting '$file' to '$destinationFolder'..."
                Expand-Archive -Path $localFilePath -DestinationPath $destinationFolder -Force
                Write-Host "File '$file' extracted successfully to '$destinationFolder'."

                # Remove the source ZIP file after successful extraction
                Remove-Item -Path $localFilePath -Force
                Write-Host "Source ZIP file '$file' removed."
            }
        } catch {
            Write-Host "Error downloading the file '$file': $_.Exception.Message"
        }
    }
}