Get-Date | out-file D:\TestLog.txt -Append
get-PSDrive -PSProvider FileSystem | out-file D:\TestLog.txt -Append