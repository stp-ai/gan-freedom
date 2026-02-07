# Get the Hebrew-named directories by listing and matching
 = "c:\Users\sarie\Claude\Projects\gan"
 = Get-ChildItem  -Directory

# Find source directories by checking if they contain the expected files
 =  | Where-Object { (Get-ChildItem extglob.FullName -Filter "IMG-20250916-WA0301.jpg" -ErrorAction SilentlyContinue) } | Select-Object -First 1
 =  | Where-Object { (Get-ChildItem extglob.FullName -Filter "IMG-20250916-WA0429.jpg" -ErrorAction SilentlyContinue) } | Select-Object -First 1

Write-Host "Soldiers source: "
Write-Host "Building source: "

# Copy soldiers-treats files
 = Join-Path  "soldiers-treats"
 = @("WA0301","WA0304","WA0306","WA0308","WA0309","WA0311","WA0312","WA0314","WA0315","WA0316","WA0317","WA0318","WA0319","WA0322","WA0325","WA0326","WA0327","WA0328","WA0329")
 = 0
 = 0
foreach ( in ) {
     = Get-ChildItem .FullName -Filter "**" -ErrorAction SilentlyContinue
    if () {
         = Join-Path  .Name
        if (-not (Test-Path )) {
            Copy-Item .FullName -Destination 
            ++
            Write-Host "  Copied: "
        } else {
            ++
        }
    } else {
        Write-Host "  NOT FOUND: **"
    }
}
Write-Host "Soldiers: copied , skipped "

# Copy building-renovation files
 = Join-Path  "building-renovation"
 = @("WA0386","WA0388","WA0389","WA0391","WA0392","WA0394","WA0396","WA0397","WA0398","WA0399","WA0406","WA0408","WA0429","WA0430","WA0432","WA0433","WA0443","WA0444","WA0448","WA0453")
 = 0
 = 0
foreach ( in ) {
     = Get-ChildItem .FullName -Filter "**" -ErrorAction SilentlyContinue
    if () {
         = Join-Path  .Name
        if (-not (Test-Path )) {
            Copy-Item .FullName -Destination 
            ++
            Write-Host "  Copied: "
        } else {
            ++
        }
    } else {
        Write-Host "  NOT FOUND: **"
    }
}
Write-Host "Building: copied , skipped "

# Final counts
Write-Host ""
Write-Host "=== FINAL COUNTS ==="
Write-Host "soldiers-treats:  files"
Write-Host "building-renovation:  files"
