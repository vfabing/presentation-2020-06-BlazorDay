# Quick fix while waiting for the release of https://github.com/dotnet/aspnetcore/issues/22353
# Updating manually "C:\Users\VivienFABING\.nuget\packages\microsoft.aspnetcore.components.webassembly.build\3.2.0\targets\ServiceWorkerAssetsManifest.targets"
# with https://github.com/dotnet/aspnetcore/pull/22771/files is also an option but less explicit (but better for demos :D)

$ServiceWorkerAssetsFilePath = "bin\\Debug\\netcoreapp3.1\\publish\\wwwroot\\service-worker-assets.js"

$ServiceWorkerAssets = Get-Content $ServiceWorkerAssetsFilePath -Raw

$Date = Get-Date -Format "yyyy-MM-dd.HH-mm-ss";

$ServiceWorkerAssets = $ServiceWorkerAssets.replace('47DEQpj8', $Date);

$ServiceWorkerAssets | Set-Content $ServiceWorkerAssetsFilePath

Write-Host "Setting version to $($Date)"