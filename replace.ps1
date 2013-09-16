$taskfile=$args[0]
$script=$args[1]
$user=$args[2]
$taskfilenew=$args[3]
$fn=$args[4]
$ln=$args[5]
$em=$args[6]
$ad=$args[7]
$ci=$args[8]
$zp=$args[9]
$ph=$args[10]
$ge=$args[11]
$by=$args[12]
$frontdoordata_file=$args[13]
$hgtvdata_file=$args[14]

(Get-Content $taskfile) | Foreach-Object {
    $_ -replace '{USERNAME}', $user `
       -replace '{SCRIPT}', $script
    } | Set-Content $taskfilenew

(Get-Content $frontdoordata_file) | Foreach-Object {
    $_ -replace '{fn}', $fn `
       -replace '{ln}', $ln `
       -replace '{em}', $em `
       -replace '{ad}', $ad `
       -replace '{ci}', $ci `
       -replace '{zp}', $zp `
       -replace '{ph}', $ph `
       -replace '{ge}', $ge `
       -replace '{by}', $by
    } | Set-Content $frontdoordata_file
    
(Get-Content $hgtvdata_file) | Foreach-Object {
    $_ -replace '{fn}', $fn `
       -replace '{ln}', $ln `
       -replace '{em}', $em `
       -replace '{ad}', $ad `
       -replace '{ci}', $ci `
       -replace '{zp}', $zp `
       -replace '{ph}', $ph `
       -replace '{ge}', $ge `
       -replace '{by}', $by
    } | Set-Content $hgtvdata_file