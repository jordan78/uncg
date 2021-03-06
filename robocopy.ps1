$src = "\\sourcefileserver\homedir"
$dest = "\\destfileserver\homedir"

$option = "/E /COPYALL /DCOPY:DAT /MIR /MT:96 /r:5 /w:10"

## loop through some list of user names 

foreach($user in get-content c:\listofusers.txt) { 
    #write-host "Robocopy $src\$user  $dest\$user $option /Log:c:\log_$user.txt"
    # create homedir first 
    New-Item -ItemType directory -Path $dest\$user
    # sleep to make sure directroy is created first
    Start-Sleep -Seconds 3
    # start copying
    Powershell -Command "Robocopy $src\$user  $dest\$user /XF '$src\$user\desktop.ini' $option /Log:c:\log_$user.txt"
}
