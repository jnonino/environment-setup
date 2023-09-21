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
  'Canonical.Ubuntu'
  'ChristianSchenk.MiKTeX'
  # 'Docker.DockerDesktop'
  'Git.Git'
  'GitHub.cli'
  'GitHub.GitHubDesktop'
  'GitHub.GitLFS'
  'GnuWin32.Make'
  'GoLang.Go'
  'Google.AndroidStudio'
  'Google.Chrome'
  'Google.CloudSDK'
  'Google.Drive'
  'Hashicorp.Terraform'
  'JetBrains.Toolbox'
  'Kubernetes.minikube'
  'Kubernetes.kubectl'
  'Microsoft.AzureCLI'
  'Microsoft.Edge'
  'Microsoft.EdgeWebView2Runtime'
  'Microsoft.MouseandKeyboardCenter'
  'Microsoft.MouseWithoutBorders'
  'Microsoft.OneDrive'
  'Microsoft.PowerShell'
  'Microsoft.Teams'
  'Microsoft.VCRedist.2015+.x64'
  'Microsoft.VisualStudioCode'
  'Microsoft.VisualStudio.2022.BuildTools'
  'Microsoft.WindowsTerminal'
  'Mozilla.Firefox'
  'Notepad++.Notepad++'
  'OpenJS.NodeJS'
  'Oracle.JDK.17'
  'Postman.Postman'
  'Python.Python.3.12'
  'RubyInstallerTeam.RubyWithDevKit.3.2'
  'SlackTechnologies.Slack'
  'Spotify.Spotify'
  'Starship.Starship'
  'StrawberryPerl.StrawberryPerl'
  'suse.RancherDesktop'
  'Twilio.Authy'
  'Valve.Steam'
  'WhatsApp.WhatsApp'
  'Zoom.Zoom'
  'Zoom.Zoom.OutlookPlugin'
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
