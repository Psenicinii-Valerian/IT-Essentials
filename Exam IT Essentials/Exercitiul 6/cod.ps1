$SmtpServer = "smtp.gmail.com"
$SmtpPort = "587"

$cred = Get-Credential

$username = "ionstep123@gmail.com"
$password = "ion1234567"

write-host " Dati calea fisierului pe cale doriti sa il atasati"

$atach = read-host

write-host

write-host = " Dati calea fisierului din Desktop de unde sa se ia datele "

$file = read-host

write-host

write-host = " Dati calea fisierului din Desktop unde sa se salveze datele "

$log = read-host

$ImportR = Import-CSV $file
$ImportR | ForEach-Object {

$emailTo = $_.emaill
$emailcc = $_.cc

$emailMessage = New-Object System.Net.Mail.MailMessage( ($cred).UserName , $emailTo )
$emailMessage.cc.add($emailcc)
$emailMessage.Subject = " My test message here "
$emailMessage.Body = " Hello world! "
$emailMessage.Attachments.add($atach)

$SMTPClient = New-Object System.Net.Mail.SmtpClient($SmtpServer, $SmtpPort)
$SMTPClient.EnableSsl = $True
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential( ($cred).UserName, ($cred).Password );
$SMTPClient.Send($emailMessage)

$emailTo | out-file $log -Append
Get-Date | out-file $log -Append
}