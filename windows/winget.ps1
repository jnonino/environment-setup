# Windows Package Manager
#   https://docs.microsoft.com/en-us/windows/package-manager/
#   https://winget.run/
# How to Run:
#   powershell -ExecutionPolicy Bypass -File .\winget.ps1

$apps = @(
  '2BrightSparks.SyncBackFree'
  'AgileBits.1Password'
  'Amazon.AWSCLI'
  'Amazon.Kindle'
  'Amazon.SendToKindle'
  'Amazon.SessionManagerPlugin'
  'Git.Git'
  'GitHub.cli'
  'GitHub.GitLFS'
  'Google.Drive'
  'Hashicorp.Terraform'
  'IDRIX.VeraCrypt'
  'Microsoft.Edge'
  'Microsoft.EdgeWebView2Runtime'
  'Microsoft.MouseandKeyboardCenter'
  'Microsoft.MouseWithoutBorders'
  'Microsoft.OneDrive'
  'Microsoft.PowerShell'
  'Microsoft.Teams'
  'Microsoft.VisualStudioCode'
  'Microsoft.WindowsTerminal'
  'MiKTeX.MiKTeX'
  'Notepad++.Notepad++'
  'OpenJS.NodeJS'
  'Python.Python.3.12'
  'Spotify.Spotify'
  'suse.RancherDesktop'
  'Valve.Steam'
  'WhatsApp.WhatsApp'
  'Zoom.Zoom'
  'Zoom.ZoomOutlookPlugin'
  
  "Task.Task"
  

  
  'Canonical.Ubuntu'
  # 'Docker.DockerDesktop'
  'GoLang.Go'
  'Google.AndroidStudio'
  'Google.Chrome'
  'Google.CloudSDK'
  'Google.Drive'
  'Kubernetes.minikube'
  'Kubernetes.kubectl'
  'Mozilla.Firefox'
  
  
)

$apps | ForEach-Object {
  $Vendor, $App = $_.Split(".")

  winget list --exact --id $_ | Out-Null
  if ($LASTEXITCODE -eq 0) {
    Write-Output "$App from $Vendor is already installed"
  } else {
    Write-Output "Installing $App from $Vendor"
    winget install --exact --id $_
    if ($LASTEXITCODE -eq 0) {
      Write-Output "$App from $Vendor installed successfully."
    }
  }
}

