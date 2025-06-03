Set-Location -Path $PSScriptRoot

Write-Host "Building site ..." -ForegroundColor Cyan
bundle exec jekyll build

Write-Host "Copying _site to docs root ..." -ForegroundColor Cyan
Copy-Item -Path "_site\*" -Destination "." -Recurse -Force

Write-Host "Staging all changes ..." -ForegroundColor Cyan
git add .

Write-Host "Committing ..." -ForegroundColor Cyan
git commit -m "Rebuild site and publish updates"

Write-Host "Pushing to GitHub ..." -ForegroundColor Cyan
git push

Write-Host "Done." -ForegroundColor Green
