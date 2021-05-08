if (Test-Path 'dist') {
  Get-ChildItem 'dist' | Remove-Item -Recurse -Force
}

# npm install -g @po-ui/theme-cli -f

Write-Host 'Building solution...' -ForegroundColor Yellow

npm run build

cp .\README.md .\dist\

cd .\dist

Write-Host 'Publishing NPM package...' -ForegroundColor Yellow
npm publish

Write-Host "`r`Done" -ForegroundColor Green
Pause
