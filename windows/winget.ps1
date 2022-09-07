# Windows Package Manager
#   https://docs.microsoft.com/en-us/windows/package-manager/
# How to Run:
#   powershell -ExecutionPolicy Bypass -File .\winget.ps1

$apps = @(
  'Amazon.AWSCLI'
  'ChristianSchenk.MiKTeX'
  'Docker.DockerDesktop'
  'Git.Git'
  'GitHub.cli'
  'GitHub.GitLFS'
  'GitHub.GitHubDesktop'
  'GoLang.Go.1.19'
  'JetBrains.Toolbox'
  'Kubernetes.minikube'
  'Kubernetes.kubectl'
  'Notepad++.Notepad++'
  'OpenJS.NodeJS'
  'Oracle.JDK.17'
  'Postman.Postman'
  'Python.Python.3.10'
  'RedHat.Podman'
)

$apps | ForEach-Object {
  $Vendor, $App = $_.Split(".")

  winget list --id $_ | Out-Null
  if ($LASTEXITCODE -eq 0) {
    Write-Output "$App from $Vendor is already installed"
  } else {
    Write-Output "Installing $App from $Vendor"
    winget install $_
    if ($LASTEXITCODE -eq 0) {
      Write-Output "$App from $Vendor installed successfully."
    }
  }
}
