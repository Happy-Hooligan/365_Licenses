# 365_Licenses
Check Licenses Users in Azure/Office 365 and e-mail the results to whoever needs them. 

This is a pretty straightforward script. Check for licenses users then e-mail it to whoever needs the information. There are a few tweaks you can do to make it: Less sarcastic, and suit your environment. 

If for some reason you are in Office 365 and you are not using cloud Exchange, then you would want to switch out Send-MailMessage -SmtpServer " " to your MX server/record. 

Importing credentials is optional. I do it to save time and the security is actually pretty good. If you don't feel comfortable doing it, then you can swap out Import-Clixml -Path ... for Get-Credential. That will bring up log in prompt and the rest will be the same.

If you want to import credentials and you don't know how, I wrote an article on how to do so. Here's the link: https://jefftechs.com/storing-powershell-credentials/

Naturally, you can change the Read-Host -prompt to whatever you see fit. Personally, I enjoy my computer being a little saucy. Also, run the script as administrator Enjoy!
