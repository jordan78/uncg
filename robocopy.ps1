$src = "\\sourcefileserver\homedir"
$dest = "\\destfileserver\homedir"

$option = "/E /COPYALL /DCOPY:DAT /MIR /MT:96"

## loop through some list of user names 

foreach($user in get-content c:\listofusers.txt) { 
    #write-host "Robocopy $src\$user  $dest\$user $option /Log:c:\log_$user.txt"
    Powershell -Command "Robocopy $src\$user  $dest\$user $option /Log:c:\log_$user.txt"
}
