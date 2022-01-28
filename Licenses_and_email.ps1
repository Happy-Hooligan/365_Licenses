#Set execution policy, install MSOnline module, find licensed user and export the results to a csv file.
Set-ExecutionPolicy -ExecutionPolicy Bypass
Install-Module MSOnline
$cred = Import-Clixml -Path "C:\Users\username\path\to\file\cloud.cred"
Connect-MsolService -Credential $cred
Get-MsolUser | where islicensed -EQ $true | sort displayname | select userprincipalname, displayname, islicensed, department |
Export-Csv -Path "C:\Users\username\wherever\you\wantthefile\Licenses\CantStopWontStop.......SendingYouFiles.csv" -NoTypeInformation -Encoding UTF8

#Send email

$subject = Read-Host "Subject of the email"
$words = Read-Host -Prompt "Say all of your favorite words to include in this e-mail"
Send-MailMessage -SmtpServer "outlook.office365.com" -UseSsl -Port 587 -From "youremail@emailaddress.com" -Credential $cred -To "boss'semail@email.com" -Subject $subject -Body "$words" -Attachments 'C:\Users\wherever\you\putthefile\CantStopWontStop.......SendingYouFiles.csv'
