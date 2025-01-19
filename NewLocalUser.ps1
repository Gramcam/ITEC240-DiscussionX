
$pw = "P@$$W0rd" 

$names = @('John', 'Graham', 'Brady', 'Andy', 'Nick')

$pwSec = ConvertTo-SecureString -String $pw -AsPlainText -Force
foreach($name in $names){
New-LocalUser -WhatIf -name "SF.$name" -Password $pwSec 
}
