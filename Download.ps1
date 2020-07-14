[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Import-Module posh-git


$j = Invoke-WebRequest 'https://raw.githubusercontent.com/phishfort/phishfort-lists/master/blacklists/domains.json' | ConvertFrom-Json

Out-File -FilePath .\PhishTank.txt -InputObject $j 
